const std = @import( "std" ) ;

pub const CHAO = lvFree ;

pub const CanNotAllocate = error{
    FailedToAllocate,
} ;

var arena = std.heap.ArenaAllocator.init( std.heap.page_allocator ) ;

//------------------------
// :[ NAME ]:
//     fnUpperAll
//
// :[ CATEGORY ]:
//     Skill
//------------------------
pub fn fnUpperAll( base: []const u8 ) error{ FailedToAllocate }!( []const u8 ) {
    var allocator = &arena.allocator;

    const result = allocator.alloc( u8, base.len ) catch {
        return CanNotAllocate.FailedToAllocate ;
    } ;
    std.mem.copy( u8, result, base ) ;

    var p = result ;
    var i: usize = 0 ;
    for( result ) | c | {
        if( 0x61 <= c and c <= 0x7a ){
            p[i] = c - 0x20 ;
        } else {
            p[i] = c ;
        }
        i += 1 ;
    }

    return result ;
}

//------------------------
// :[ NAME ]:
//     fnLowerAll
//
// :[ CATEGORY ]:
//     Skill
//------------------------
pub fn fnLowerAll( base: []const u8 ) error{ FailedToAllocate }!( []const u8 ) {
    var allocator = &arena.allocator;

    const result = allocator.alloc( u8, base.len ) catch {
        return CanNotAllocate.FailedToAllocate ;
    } ;
    std.mem.copy( u8, result, base ) ;

    var p = result ;
    var i: usize = 0 ;
    for( result ) | c | {
        if( 0x41 <= c and c <= 0x5a ){
            p[i] = c + 0x20 ;
        } else {
            p[i] = c ;
        }
        i += 1 ;
    }

    return result ;
}

//------------------------
// :[ NAME ]:
//     lvFree
//
// :[ CATEGORY ]:
//     Leave
//------------------------
fn lvFree() void {
    arena.deinit() ;

    return ;
}
