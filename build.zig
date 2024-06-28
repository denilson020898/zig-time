const std = @import("std");

pub fn build(b: *std.Build) void {
    const t = b.addTest(.{
        .root_source_file = .{ .path = "main.zig" },
    });

    const run_t = b.addRunArtifact(t);

    const t_step = b.step("test", "Run all the tests.");
    t_step.dependOn(&run_t.step);
}
