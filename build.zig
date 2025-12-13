const std = @import("std");

pub fn build(b: *std.Build) void {
    // Default to Linux glibc (matches the handcrafted config.h), allow override with -Dtarget.
    const target = b.standardTargetOptions(.{
        .default_target = .{ .cpu_arch = .x86_64, .os_tag = .linux, .abi = .gnu },
    });
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "socat",
        .root_module = b.createModule(.{
            .target = target,
            .optimize = optimize,
        }),
    });

    exe.root_module.addIncludePath(.{ .cwd_relative = "socat" });
    exe.root_module.addIncludePath(.{ .cwd_relative = "." });

    // Derive C flags from configure.in expectations.
    var c_flags = std.ArrayListUnmanaged([]const u8){};

    c_flags.appendSlice(b.allocator, &.{
        "-std=gnu11",
        "-D_FILE_OFFSET_BITS=64", // AC_SYS_LARGEFILE equivalent
        "-D_LARGEFILE_SOURCE",
    }) catch @panic("OOM adding base flags");

    switch (target.result.os.tag) {
        .linux => {
            c_flags.append(b.allocator, "-D_GNU_SOURCE") catch @panic("OOM adding linux flags");
            // Match autoconf's linkage expectations.
            exe.linkSystemLibrary("pthread");
            if (target.result.abi == .gnu) {
                exe.linkSystemLibrary("rt");
            }
            exe.linkSystemLibrary("m");
        },
        .windows => {
            // Windows builds are experimental; keep flags minimal.
            c_flags.append(b.allocator, "-DWIN32") catch @panic("OOM adding windows flags");
            exe.linkSystemLibrary("ws2_32");
        },
        else => {},
    }

    const sources = [_][]const u8{
        // core sources
        "socat/socat.c",
        // xio layer (trimmed to features enabled above)
        "socat/xioinitialize.c",
        "socat/xiohelp.c",
        "socat/xioparam.c",
        "socat/xiodiag.c",
        "socat/xioopen.c",
        "socat/xioopts.c",
        "socat/xiosignal.c",
        "socat/xiosigchld.c",
        "socat/xioread.c",
        "socat/xiowrite.c",
        "socat/xiolayer.c",
        "socat/xioshutdown.c",
        "socat/xioclose.c",
        "socat/xioexit.c",
        "socat/xio-process.c",
        "socat/xio-fd.c",
        "socat/xio-fdnum.c",
        "socat/xio-stdio.c",
        "socat/xio-pipe.c",
        "socat/xio-socketpair.c",
        "socat/xio-gopen.c",
        "socat/xio-creat.c",
        "socat/xio-file.c",
        "socat/xio-named.c",
        "socat/xio-socket.c",
        "socat/xio-interface.c",
        "socat/xio-listen.c",
        "socat/xio-unix.c",
        "socat/xio-ip.c",
        "socat/xio-ip4.c",
        "socat/xio-ip6.c",
        "socat/xio-ipapp.c",
        "socat/xio-tcp.c",
        "socat/xio-udp.c",
        "socat/xio-progcall.c",
        "socat/xio-exec.c",
        "socat/xio-system.c",
        "socat/xio-shell.c",
        "socat/xio-termios.c",
        "socat/xio-streams.c",
        "socat/xio-ascii.c",
        "socat/xiolockfile.c",
        "socat/xio-stall.c",
        "socat/xio-text.c",
        // utility code
        "socat/error.c",
        "socat/dalan.c",
        "socat/hostan.c",
        "socat/fdname.c",
        "socat/sysutils.c",
        "socat/utils.c",
        "socat/nestlex.c",
        "socat/vsnprintf_r.c",
        "socat/snprinterr.c",
        "socat/sycls.c",
    };

    exe.addCSourceFiles(.{
        .files = &sources,
        .flags = c_flags.items,
    });
    exe.linkLibC();

    b.installArtifact(exe);
}
