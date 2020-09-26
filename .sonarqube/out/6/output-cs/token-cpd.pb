’
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
:# $"
EfEntityRepositoryBase% ;
<; <
Board< A
>A B
,B C
IBoardRepositoryD T
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
:8 9
base: >
(> ?
context? F
)F G
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
List 
< 
SwimLane 
> 
GetBoardSwimLanes /
(/ 0
string0 6
boardId7 >
)> ?
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
} 
} ƒ
TC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfCardRepository.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public		 

class		 
EfCardRepository		 !
:		" #"
EfEntityRepositoryBase		$ :
<		: ;
Card		; ?
>		? @
,		@ A
ICardRepository		B Q
{

 
private 
readonly 
KanbanContext &
context' .
;. /
public 
EfCardRepository 
(  
KanbanContext  -
context. 5
)5 6
:7 8
base9 =
(= >
context> E
)E F
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
List 
< 
CardAttachment "
>" #
GetCardAttachments$ 6
(6 7
string7 =
CardId> D
)D E
{ 	
return 
context 
. 
CardAttachments *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
CardId8 >
==? A
CardIdB H
)H I
.I J
ToListJ P
(P Q
)Q R
;R S
} 	
} 
} ï
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfSwimLaneRepository.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{ 
public		 

class		  
EfSwimLaneRepository		 %
:		& '"
EfEntityRepositoryBase		( >
<		> ?
SwimLane		? G
>		G H
,		H I
ISwimLaneRepository		J ]
{

 
private 
readonly 
KanbanContext &
_context' /
;/ 0
public  
EfSwimLaneRepository #
(# $
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
_context 
= 
context 
; 
} 	
public 
List 
< 
Card 
> 
GetSwimLaneCards *
(* +
string+ 1

SwimLaneId2 <
)< =
{ 	
return 
_context 
. 
Cards !
.! "
Where" '
(' (
x( )
=>* ,
x- .
.. /

SwimLaneId/ 9
==: <

SwimLaneId= G
)G H
.H I
ToListI O
(O P
)P Q
;Q R
} 	
} 
} 
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
: 
IUnitOfWork  +
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
} ¥
QC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\KanbanContext.cs
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
public 

class 
KanbanContext 
:  
	DbContext! *
{ 
public 
KanbanContext 
( 
DbContextOptions -
options. 5
)5 6
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
Board 
> 
Boards "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
SwimLane 
> 
	SwimLanes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Setting 
> 
Settings &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Card 
> 
Cards  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
CardAttachment #
># $
CardAttachments% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
DbSet 
< 
CardType 
> 
	CardTypes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} 