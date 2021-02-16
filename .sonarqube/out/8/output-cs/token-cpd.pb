§
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
} ã
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
{ 
private 
readonly 
KanbanContext &
context' .
;. /
public 
EfCardRepository 
(  
KanbanContext  -
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
}!! Ù
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
KanbanContext
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
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
this 
. 
context 
= 
context "
;" #
} 	
} 
} Ù
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfCardTypeRepository.cs
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
EfCardTypeRepository %
:& '"
EfEntityRepositoryBase( >
<> ?
CardType? G
>G H
,H I
ICardTypeRepositoryJ ]
{ 
private		 
readonly		 
KanbanContext		 &
context		' .
;		. /
public  
EfCardTypeRepository #
(# $
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
this 
. 
context 
= 
context "
;" #
} 	
} 
} Ù
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
KanbanContext		 &
context		' .
;		. /
public  
EfPriorityRepository #
(# $
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
this 
. 
context 
= 
context "
;" #
} 	
} 
} Þ)
XC:\TFSProjects\KanbanApp\KanbanApp.Data\Concrete\EntityFramework\EfSwimLaneRepository.cs
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
EfSwimLaneRepository %
:& '"
EfEntityRepositoryBase( >
<> ?
SwimLane? G
>G H
,H I
ISwimLaneRepositoryJ ]
{ 
private 
readonly 
KanbanContext &
_context' /
;/ 0
	protected 
readonly 
DbSet  
<  !
SwimLane! )
>) *
dbSet+ 0
;0 1
public  
EfSwimLaneRepository #
(# $
KanbanContext$ 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
_context 
= 
context 
; 
dbSet 
= 
context 
. 
Set 
<  
SwimLane  (
>( )
() *
)* +
;+ ,
} 	
public 
List 
< 
Card 
> 
GetSwimLaneCards *
(* +
string+ 1

SwimLaneId2 <
)< =
{ 	
List 
< 
Card 
> 
cardList 
;  
try 
{ 
cardList 
= 
_context #
.# $
Cards$ )
.) *
Include* 1
(1 2
c2 3
=>4 6
c7 8
.8 9
CardPriority9 E
)E F
.F G
WhereG L
(L M
xM N
=>O Q
xR S
.S T

SwimLaneIdT ^
==_ a

SwimLaneIdb l
)l m
.m n
ToListn t
(t u
)u v
;v w
} 
catch 
( 
System 
. 
	Exception #
ex$ &
)& '
{ 
throw!! 
ex!! 
;!! 
}"" 
return$$ 
cardList$$ 
;$$ 
}-- 	
public// 
	PagedList// 
<// 
Card// 
>// &
GetSwimLaneCardsWithPaging// 9
(//9 :
string//: @

SwimLaneId//A K
,//K L
PagingParameterBase//M `
pagingParameter//a p
)//p q
{00 	
try44 
{55 
int66 
count66 
=66 
_context66 $
.66$ %
Cards66% *
.66* +
Include66+ 2
(662 3
c663 4
=>665 7
c668 9
.669 :
CardPriority66: F
)66F G
.66G H
Where66H M
(66M N
x66N O
=>66P R
x66S T
.66T U

SwimLaneId66U _
==66` b

SwimLaneId66c m
)66m n
.66n o
Count66o t
(66t u
)66u v
;66v w
	PagedList77 
<77 
Card77 
>77 
cardList77  (
=77) *
	PagedList77+ 4
<774 5
Card775 9
>779 :
.77: ;
ToPagedList77; F
(77F G
_context77G O
.77O P
Cards77P U
.77U V
Include77V ]
(77] ^
c77^ _
=>77` b
c77c d
.77d e
CardPriority77e q
)77q r
.77r s
Where77s x
(77x y
x77y z
=>77{ }
x77~ 
.	77 €

SwimLaneId
77€ Š
==
77‹ 

SwimLaneId
77Ž ˜
)
77˜ ™
.
77™ š
OrderBy
77š ¡
(
77¡ ¢
on
77¢ ¤
=>
77¥ §
on
77¨ ª
.
77ª «
CardId
77« ±
)
77± ²
.
77² ³
Skip
77³ ·
(
77· ¸
(
77¸ ¹
pagingParameter
77¹ È
.
77È É

PageNumber
77É Ó
-
77Ô Õ
$num
77Ö ×
)
77× Ø
*
77Ù Ú
pagingParameter
77Û ê
.
77ê ë
PageSize
77ë ó
)
77ó ô
.88 	
Take88	 
(88 
pagingParameter88 
.88 
PageSize88 &
)88& '
,88' (
pagingParameter88) 8
.888 9

PageNumber889 C
,88C D
pagingParameter99 
.99 
PageSize99  
,99  !
count99" '
)99' (
;99( )
return;; 
cardList;; 
;;;  
}== 
catch>> 
(>> 
System>> 
.>> 
	Exception>> #
ex>>$ &
)>>& '
{?? 
throwAA 
exAA 
;AA 
}BB 
}HH 	
publicJJ 
TaskJJ 
<JJ 
intJJ 
>JJ 

CountAsyncJJ #
(JJ# $
)JJ$ %
{KK 	
returnLL 
dbSetLL 
.LL 

CountAsyncLL #
(LL# $
)LL$ %
;LL% &
}MM 	
}NN 
}OO 
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
} Å
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