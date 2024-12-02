const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const file = std.fs.cwd().openFile("../Extras/input.txt", {}) catch unreachable;
    defer file.close();

    //gets file size
    const file_size: u64 = file.getEndPos() catch unreachable;
    const buffer: []u8 = allocator.alloc(u8, file_size) catch unreachable;
    defer allocator.free(buffer);
}
