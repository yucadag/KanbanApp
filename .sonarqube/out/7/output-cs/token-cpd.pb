�
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
private
readonly

context
;
public 
EfBoardRepository  
(  !

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
.E F
OrderByF M
(M N
xN O
=>P R
xS T
.T U
PositionU ]
)] ^
.^ _
ToList_ e
(e f
)f g
;g h
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
} �
TC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfCardRepository.cs
	namespace

 	
	KanbanApp


 
.

 
Data

 
.

 
Concrete

 !
.

! "
EntityFramework

" 1
{ 
public 

class 
EfCardRepository !
:" #"
EfEntityRepositoryBase$ :
<: ;
Card; ?
>? @
,@ A
ICardRepositoryB Q
{
private 
readonly 

context' .
;. /
public 
EfCardRepository 
(  

context. 5
)5 6
:7 8
base9 =
(= >
context> E
)E F
{ 	
this 
. 
context 
= 
context "
;" #
} 	
public 
List 
< 
CardAttachment "
>" #
GetCardAttachments$ 6
(6 7
string7 =
CardId> D
)D E
{ 	
return 
context 
. 
CardAttachments *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
CardId8 >
==? A
CardIdB H
)H I
.I J
ToListJ P
(P Q
)Q R
;R S
} 	
public 
Card 
GetCardWithdetail %
(% &

Expression& 0
<0 1
Func1 5
<5 6
Card6 :
,: ;
bool< @
>@ A
>A B
filterC I
=J K
nullL P
)P Q
{ 	
return 
context 
. 
Cards  
.  !
Include! (
(( )
c) *
=>+ -
c. /
./ 0
CardPriority0 <
)< =
.= >
Where> C
(C D
filterD J
)J K
.K L
SingleOrDefaultL [
([ \
)\ ]
;] ^
} 	
}   
}!! �
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfCardTaskRepository.cs
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
class  
EfCardTaskRepository %
:& '"
EfEntityRepositoryBase( >
<> ?
CardTask? G
>G H
,H I
ICardTaskRepositoryJ ]
{		 
private

 
readonly

 


 &
context

' .
;

. /
public  
EfCardTaskRepository #
(# $

context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{
this 
. 
context 
= 
context "
;" #
} 	
} 
} �
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfPriorityRepository.cs
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
public 

class  
EfPriorityRepository %
:& '"
EfEntityRepositoryBase( >
<> ?
Priority? G
>G H
,H I
IPriorityRepositoryJ ]
{ 
private		 
readonly		 

context		' .
;		. /
public  
EfPriorityRepository #
(# $

context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
this
.
context
=
context
;
} 	
} 
} �
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfSwimLaneRepository.cs
	namespace 	
	KanbanApp
 
. 
Data 
. 
Concrete !
.! "
EntityFramework" 1
{		 
public

 

class

  
EfSwimLaneRepository

 %
:

& '"
EfEntityRepositoryBase

( >
<

> ?
SwimLane

? G
>

G H
,

H I
ISwimLaneRepository

J ]
{ 
private 
readonly 

_context' /
;/ 0
public
EfSwimLaneRepository
(

context
)
:
base
(
context
)
{ 	
_context 
= 
context 
; 
} 	
public 
List 
< 
Card 
> 
GetSwimLaneCards *
(* +
string+ 1

SwimLaneId2 <
)< =
{ 	
return 
_context 
. 
Cards !
.! "
Include" )
() *
c* +
=>, .
c/ 0
.0 1
CardPriority1 =
)= >
.> ?
Where? D
(D E
xE F
=>G I
xJ K
.K L

SwimLaneIdL V
==W Y

SwimLaneIdZ d
)d e
.e f
ToListf l
(l m
)m n
;n o
} 	
} 
} �
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
}
public 
async 
Task 

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
} �
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

:  
	DbContext! *
{ 
public 

( 
DbContextOptions -
options. 5
)5 6
:7 8
base9 =
(= >
options> E
)E F
{ 	
} 	
public 
DbSet 
< 
Board 
> 
Boards "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
SwimLane 
> 
	SwimLanes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Setting 
> 
Settings &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Card 
> 
Cards  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
CardTask 
> 
CardTask '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
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
}- .
public 
DbSet 
< 
Priority 
> 
Priority '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} 