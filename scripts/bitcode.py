#!/usr/bin/python

import os
import sys
import glob
import subprocess

# ====== SETUP --- Get all C sources ======

NAUTILUS = os.getcwd()

# Objs based on Makefile
# LOST OBJS: scripts/basic --- uses gcc
OBJS = [".", "scripts", "src", "src/acpi", "src/acpi/acpica", "src/arch", "src/arch/x64", "src/arch/x64/asm", "src/asm", "src/dev", "src/fs", "src/gc", "src/nautilus", "src/nautilus/mm", "src/net", "src/test", "lib"]

# Target C sources (obj : [files])
TARGETSCC = {}

def getFiles (obj, ext, target):
    os.chdir(NAUTILUS + "/" + obj)
    target[obj] = [os.path.splitext(file)[0] for file in glob.glob("*." + ext)]

for obj in OBJS:
    getFiles(obj, "c", TARGETSCC)

print TARGETSCC

# ====== GENERATE BITCODE SOURCES --- Build bc sources for all files in a target obj dir ====== 

# Work from base Nautilus dir
os.chdir(NAUTILUS)

errorTargets = []
linkedTargets = []

# Gen bc
for target, files in TARGETSCC.items():
    # Clear old bc sources --- Overwriting isn't possible because of conflicting symbols
    subprocess.call('rm {0}/*.bc'.format(target), shell=True)
    subprocess.call('rm {0}/*.ll'.format(target), shell=True)

    # INDIVIDUAL BC SOURCE --- Generate bc for all files in a target obj dir
    for file in files:
        commandClang = 'clang -emit-llvm -Wp,-MD,src/nautilus/.{1}.o.d   -D__NAUTILUS__ -Iinclude  -include include/autoconf.h -D__NAUTILUS__ -fno-omit-frame-pointer -ffreestanding -fno-stack-protector -fno-strict-aliasing -fno-strict-overflow -mno-red-zone -mcmodel=large  -O2  -Wall -Wno-unused-function -Wno-unused-variable -fno-common -Wstrict-overflow=5 -fgnu89-inline -g -m64  -Wno-pointer-sign    -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR({1})"  -D"KBUILD_MODNAME=KBUILD_STR({1})" -c -o {0}/{1}.bc {0}/{1}.c'.format(target, file)

        processClang = subprocess.call(commandClang, shell=True)
        
	# Record files that error when building bc --- debugging
	if processClang:
            errorTarget = (target, file)
            errorTargets.append(errorTarget)

    # OBJ DIR LEVEL LINK --- Generate linked bc source for each target obj dir (link all bc sources in a obj dir)
    linkPath = '{0}/{1}_link.bc'.format(target, os.path.basename(os.path.normpath(target)))

    subprocess.call('llvm-link {0}/*.bc -o {1}'.format(target, linkPath), shell=True)
    subprocess.call('llvm-dis {0}'.format(linkPath), shell=True)

    # Record all possible linked bc sources in linkedTargets --- generate top level link from linkedTargets
    if os.path.exists(linkPath):
        linkedTargets.append(linkPath)

# Move all linked bc sources to $NAUTILUS/linked
linkedPath = '{0}/linked'.format(NAUTILUS)
dirLinked = 'rm {0}/*'.format(linkedPath) if os.path.exists(linkedPath) else 'mkdir {0}'.format(linkedPath)
subprocess.call(dirLinked, shell=True)

for target in linkedTargets:
    subprocess.call('mv {0} {1}'.format(target, linkedPath), shell=True)

# TOP LEVEL LINK --- link all bc sources in $NAUTILUS/linked
subprocess.call('llvm-link {0}/*.bc -v -o nautilus_link.bc'.format(linkedPath), shell=True)
subprocess.call('llvm-dis nautilus_link.bc', shell=True)

print OBJS
print errorTargets
print linkedTargets

