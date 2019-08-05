cmd_src/test/instrument.o := clang -Wp,-MD,src/test/.instrument.o.d   -D__NAUTILUS__ -Iinclude  -include include/autoconf.h -D__NAUTILUS__ -fno-omit-frame-pointer -ffreestanding -fno-stack-protector -fno-strict-aliasing -fno-strict-overflow -mno-red-zone -mcmodel=large  -O2   -Wall -Wno-unused-function -Wno-unused-variable -fno-common -Wstrict-overflow=5  -fgnu89-inline -g -m64  -Wno-pointer-sign    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(instrument)"  -D"KBUILD_MODNAME=KBUILD_STR(instrument)" -c -o src/test/instrument.o src/test/instrument.c

deps_src/test/instrument.o := \
  src/test/instrument.c \
  include/autoconf.h \
    $(wildcard include/config/x86/64/host.h) \
    $(wildcard include/config/xeon/phi.h) \
    $(wildcard include/config/hvm/hrt.h) \
    $(wildcard include/config/gem5.h) \
    $(wildcard include/config/max/cpus.h) \
    $(wildcard include/config/max/ioapics.h) \
    $(wildcard include/config/palacios.h) \
    $(wildcard include/config/use/naut/builtins.h) \
    $(wildcard include/config/cxx/support.h) \
    $(wildcard include/config/rust/support.h) \
    $(wildcard include/config/use/gcc.h) \
    $(wildcard include/config/use/clang.h) \
    $(wildcard include/config/compiler/prefix.h) \
    $(wildcard include/config/compiler/suffix.h) \
    $(wildcard include/config/toolchain/root.h) \
    $(wildcard include/config/max/threads.h) \
    $(wildcard include/config/run/tests/at/boot.h) \
    $(wildcard include/config/thread/exit/keycode.h) \
    $(wildcard include/config/use/ticketlocks.h) \
    $(wildcard include/config/virtual/console/display/name.h) \
    $(wildcard include/config/virtual/console/chardev/console.h) \
    $(wildcard include/config/virtual/console/serial/mirror.h) \
    $(wildcard include/config/virtual/console/serial/mirror/all.h) \
    $(wildcard include/config/utilization/limit.h) \
    $(wildcard include/config/sporadic/reservation.h) \
    $(wildcard include/config/aperiodic/reservation.h) \
    $(wildcard include/config/hz.h) \
    $(wildcard include/config/interrupt/reinjection/delay/ns.h) \
    $(wildcard include/config/auto/reap.h) \
    $(wildcard include/config/work/stealing.h) \
    $(wildcard include/config/task/in/sched.h) \
    $(wildcard include/config/task/thread.h) \
    $(wildcard include/config/task/in/idle.h) \
    $(wildcard include/config/fiber/thread.h) \
    $(wildcard include/config/fiber/thread/priority.h) \
    $(wildcard include/config/enable/spin.h) \
    $(wildcard include/config/enable/sleep.h) \
    $(wildcard include/config/enable/wait.h) \
    $(wildcard include/config/fiber/thread/sleep/time.h) \
    $(wildcard include/config/interrupt/thread.h) \
    $(wildcard include/config/aperiodic/dynamic/quantum.h) \
    $(wildcard include/config/aperiodic/dynamic/lifetime.h) \
    $(wildcard include/config/aperiodic/lottery.h) \
    $(wildcard include/config/aperiodic/round/robin.h) \
    $(wildcard include/config/real/mode/interface.h) \
    $(wildcard include/config/isocore.h) \
    $(wildcard include/config/cachepart.h) \
    $(wildcard include/config/garbage/collection.h) \
    $(wildcard include/config/fpu/save.h) \
    $(wildcard include/config/kick/schedule.h) \
    $(wildcard include/config/halt/while/idle.h) \
    $(wildcard include/config/thread/optimize.h) \
    $(wildcard include/config/debug/info.h) \
    $(wildcard include/config/debug/prints.h) \
    $(wildcard include/config/enable/asserts.h) \
    $(wildcard include/config/profile.h) \
    $(wildcard include/config/silence/undef/err.h) \
    $(wildcard include/config/enable/stack/check.h) \
    $(wildcard include/config/enable/remote/debugging.h) \
    $(wildcard include/config/debug/paging.h) \
    $(wildcard include/config/debug/bootmem.h) \
    $(wildcard include/config/debug/cmdline.h) \
    $(wildcard include/config/debug/tests.h) \
    $(wildcard include/config/debug/buddy.h) \
    $(wildcard include/config/debug/kmem.h) \
    $(wildcard include/config/debug/fpu.h) \
    $(wildcard include/config/debug/smp.h) \
    $(wildcard include/config/debug/shell.h) \
    $(wildcard include/config/debug/sfi.h) \
    $(wildcard include/config/debug/cxx.h) \
    $(wildcard include/config/debug/threads.h) \
    $(wildcard include/config/debug/fibers.h) \
    $(wildcard include/config/debug/waitqueues.h) \
    $(wildcard include/config/debug/group.h) \
    $(wildcard include/config/debug/sched.h) \
    $(wildcard include/config/debug/group/sched.h) \
    $(wildcard include/config/debug/timers.h) \
    $(wildcard include/config/debug/semaphores.h) \
    $(wildcard include/config/debug/msg/queues.h) \
    $(wildcard include/config/debug/synch.h) \
    $(wildcard include/config/debug/barrier.h) \
    $(wildcard include/config/debug/numa.h) \
    $(wildcard include/config/debug/virtual/console.h) \
    $(wildcard include/config/debug/dev.h) \
    $(wildcard include/config/debug/filesystem.h) \
    $(wildcard include/config/debug/loader.h) \
    $(wildcard include/config/debug/linker.h) \
    $(wildcard include/config/debug/pmc.h) \
    $(wildcard include/config/nesl/rt.h) \
    $(wildcard include/config/omp/rt.h) \
    $(wildcard include/config/racket/rt.h) \
    $(wildcard include/config/serial/redirect.h) \
    $(wildcard include/config/serial/redirect/port.h) \
    $(wildcard include/config/apic/force/xapic/mode.h) \
    $(wildcard include/config/apic/timer/calibrate/independently.h) \
    $(wildcard include/config/debug/apic.h) \
    $(wildcard include/config/debug/ioapic.h) \
    $(wildcard include/config/debug/pci.h) \
    $(wildcard include/config/disable/ps2/mouse.h) \
    $(wildcard include/config/debug/ps2.h) \
    $(wildcard include/config/gpio.h) \
    $(wildcard include/config/debug/pit.h) \
    $(wildcard include/config/hpet.h) \
    $(wildcard include/config/virtio/pci.h) \
    $(wildcard include/config/debug/virtio/pci.h) \
    $(wildcard include/config/virtio/net.h) \
    $(wildcard include/config/debug/virtio/net.h) \
    $(wildcard include/config/virtio/blk.h) \
    $(wildcard include/config/debug/virtio/blk.h) \
    $(wildcard include/config/e1000/pci.h) \
    $(wildcard include/config/debug/e1000/pci.h) \
    $(wildcard include/config/e1000e/pci.h) \
    $(wildcard include/config/mlx3/pci.h) \
    $(wildcard include/config/ramdisk.h) \
    $(wildcard include/config/ata.h) \
    $(wildcard include/config/hda/pci.h) \
    $(wildcard include/config/debug/hda/pci.h) \
    $(wildcard include/config/ext2/filesystem/driver.h) \
    $(wildcard include/config/fat32/filesystem/driver.h) \
    $(wildcard include/config/net/ethernet.h) \
    $(wildcard include/config/net/collective.h) \
    $(wildcard include/config/load/lua.h) \
  include/nautilus/nautilus.h \
  include/nautilus/percpu.h \
  /project/llvm/8.0.0/release/lib/clang/8.0.0/include/stddef.h \
  /project/llvm/8.0.0/release/lib/clang/8.0.0/include/__stddef_max_align_t.h \
  include/nautilus/msr.h \
  include/nautilus/naut_types.h \
  include/nautilus/smp.h \
  include/dev/apic.h \
  include/nautilus/spinlock.h \
  include/nautilus/intrinsics.h \
    $(wildcard include/config/legion/rt.h) \
  include/nautilus/atomic.h \
  include/nautilus/cpu.h \
  include/nautilus/cpu_state.h \
  include/nautilus/instrument.h \
  include/nautilus/mm.h \
    $(wildcard include/config/enable/bdwgc.h) \
    $(wildcard include/config/align/bdwgc.h) \
    $(wildcard include/config/enable/pdsgc.h) \
    $(wildcard include/config/explicit/only/pdsgc.h) \
  include/nautilus/list.h \
  include/nautilus/naut_string.h \
  include/nautilus/buddy.h \
  include/nautilus/queue.h \
  include/nautilus/printk.h \
  /project/llvm/8.0.0/release/lib/clang/8.0.0/include/stdarg.h \
  include/dev/serial.h \
    $(wildcard include/config/serial/debugger.h) \
  include/nautilus/thread.h \
  include/nautilus/cachepart.h \
  include/nautilus/scheduler.h \
  include/nautilus/fiber.h \
  include/nautilus/vc.h \
  include/dev/ps2.h \
  include/dev/ioapic.h \
  include/nautilus/paging.h \
    $(wildcard include/config/hrt/hihalf/offset.h) \
  include/nautilus/idt.h \
  include/asm/lowlevel.h \
  include/nautilus/gdt.h \
  include/nautilus/limits.h \
  include/nautilus/naut_assert.h \
  include/nautilus/barrier.h \
  include/nautilus/numa.h \
  include/arch/x64/main.h \
  include/nautilus/random.h \
  include/nautilus/shell.h \

src/test/instrument.o: $(deps_src/test/instrument.o)

$(deps_src/test/instrument.o):
