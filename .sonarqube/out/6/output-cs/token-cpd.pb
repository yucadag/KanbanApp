í
UC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfBoardRepository.cs
	namespace		 	
	KanbanApp		
 
.		 
Data		 
.		 
Concrete		 !
.		! "
EntityFramework		" 1
{

 
public 

class 
EfBoardRepository "
:" #"
EfEntityRepositoryBase$ :
<: ;
Board; @
>@ A
,A B
IBoardRepositoryC S
{ 
private 
readonly 
KanbanContext &
context' .
;. /
public 
EfBoardRepository  
(  !
KanbanContext! .
context/ 6
)6 7
:7 8
base8 <
(< =
context= D
)D E
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
List 
< 
SwimLane 
> 
GetBoardSwimLanes 0
(0 1
string1 7
boardId8 ?
)? @
{ 	
return 
context 
. 
	SwimLanes $
.$ %
Where% *
(* +
x+ ,
=>- /
x0 1
.1 2
BoardId2 9
==: <
boardId= D
)D E
.E F
ToListF L
(L M
)M N
;N O
} 	
public 
async 
Task 
< 
List 
< 
SwimLane '
>' (
>( )"
GetBoardSwimLanesAsync* @
(@ A
stringA G
boardIdH O
)O P
{ 	
return 
await 
context  
.  !
	SwimLanes! *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
BoardId8 ?
==@ B
boardIdC J
)J K
.K L
ToListAsyncL W
(W X
)X Y
;Y Z
} 	
}QQ 
}RR É
TC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfCardRepository.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public 	
class
 
EfCardRepository  
:! ""
EfEntityRepositoryBase# 9
<9 :
Card: >
>> ?
,? @
ICardRepositoryA P
{ 
private 
readonly 
KanbanContext &
context' .
;. /
public 
EfCardRepository 
(  
KanbanContext  -
context. 5
)5 6
:7 8
base9 =
(= >
context> E
)E F
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
List 
< 
CardAttachment #
># $
GetCardAttachments% 7
(7 8
string8 >
CardId? E
)E F
{ 	
return 
context 
. 
CardAttachments +
.+ ,
Where, 1
(1 2
x2 3
=>4 6
x7 8
.8 9
CardId9 ?
==@ B
CardIdC I
)I J
.J K
ToListK Q
(Q R
)R S
;S T
} 	
} 
} Ô
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfSwimLaneRepository.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public 

class  
EfSwimLaneRepository %
:& '"
EfEntityRepositoryBase( >
<> ?
SwimLane? G
>G H
,H I
ISwimLaneRepositoryJ ]
{ 
private 
readonly 
KanbanContext &
_context' /
;/ 0
public  
EfSwimLaneRepository #
(# $
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
_context 
= 
context 
; 
} 	
public 
List 
< 
Card 
> 
GetSwimLaneCards +
(+ ,
string, 2

SwimLaneId3 =
)= >
{ 	
return 
_context 
. 
Cards "
." #
Where# (
(( )
x) *
=>+ -
x. /
./ 0

SwimLaneId0 :
==; =

SwimLaneId> H
)H I
.I J
ToListJ P
(P Q
)Q R
;R S
} 	
} 
} ê
PC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfUnitOfWork.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public 

class 
EfUnitOfWork 
: 
IUnitOfWork )
{ 
private 
readonly 
KanbanContext &
context' .
;. /
public

 
EfUnitOfWork

 
(

 
KanbanContext

 )
context

* 1
)

1 2
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
async 
Task 
CompleteAsync '
(' (
)( )
{ 	
await 
context 
. 
SaveChangesAsync *
(* +
)+ ,
;, -
} 	
} 
} Ò
QC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\KanbanContext.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public 

class 
KanbanContext 
:  
	DbContext! *
{		 
public 
KanbanContext 
( 
DbContextOptions -
options. 5
)5 6
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
Board 
> 
Boards "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
SwimLane 
> 
	SwimLanes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Setting 
> 
Settings &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Card 
> 
Cards  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
CardAttachment #
># $
CardAttachments% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
DbSet 
< 
CardType 
> 
	CardTypes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
}$$ 	
}&& 
}'' 