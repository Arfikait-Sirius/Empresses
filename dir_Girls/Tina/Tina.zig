const std = @import( "std" ) ;

const LABEL_GIRLS_NAME = "[GIRLS-NAME]: " ;
const LABEL_TARGET = "[    TARGET]: " ;
const LABEL_JUDGE = "[     JUDGE]: " ;
const LABEL_PRINT = "[     PRINT]: " ;

var girlName: []const u8 = "" ;
var skillName: []const u8 = "" ;

//------------------------
// :[ NAME ]:
//     fnSetGirlName
//
// :[ CATEGORY ]:
//     Skill
//------------------------
pub fn fnSetGirlName( name: []const u8 ) void {
    girlName = name ;

    std.debug.print( "{s}{s}\n", .{ LABEL_GIRLS_NAME, girlName } ) ;

    return ;
}

//------------------------
// :[ NAME ]:
//     fnSetSkillName
//
// :[ CATEGORY ]:
//     Skill
//------------------------
pub fn fnSetSkillName( target: []const u8 ) void {
    skillName = target ;

    std.debug.print( "{s}{s}()\n", .{ LABEL_TARGET, skillName } ) ;

    return ;
}

//------------------------
// :[ NAME ]:
//     fnJudge
//
// :[ CATEGORY ]:
//     Skill
//------------------------
pub fn fnJudge( judgement: bool ) void {
    
    if( judgement ){
        std.debug.print( "{s}OK\n", .{ LABEL_JUDGE } ) ;
    } else {
        std.debug.print( "{s}NG - Please check {s}\n", .{ LABEL_JUDGE, skillName } ) ;
    }

    return ;
}
