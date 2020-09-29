�H
EC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\BoardController.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
BoardController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IBoardService &
_boardService' 4
;4 5
public 
BoardController 
( 
IBoardService ,
_service- 5
)5 6
{ 	
_boardService 
= 
_service $
;$ %
} 	
[%% 	
HttpPost%%	 
]%% 
public&& 
ActionResult&& 
<&& '
GetBoardDetailCommandResult&& 7
>&&7 8
Get&&9 <
(&&< =
BoardGetInput&&= J
input&&K P
)&&P Q
{'' 	!
GetBoardDetailCommand(( !
command((" )
=((* +
new((, /!
GetBoardDetailCommand((0 E
(((E F
input((F K
.((K L
BoardId((L S
)((S T
;((T U
Task** 
<** '
GetBoardDetailCommandResult** ,
>**, -
result**. 4
=**5 6
_boardService**7 D
.**D E
Get**E H
(**H I
command**I P
)**P Q
;**Q R
if++ 
(++ 
result++ 
.++ 
Result++ 
.++ 
ResultObject++ *
.++* +
Success+++ 2
)++2 3
{,, 
return-- 
Ok-- 
(-- 
result--  
)--  !
;--! "
}.. 
else// 
{00 
return11 

BadRequest11 !
(11! "
result11" (
)11( )
;11) *
}22 
}33 	
[99 	
Route99	 
(99 
$str99 
)99 
]99 
[:: 	
HttpGet::	 
]:: 
public;; 
ActionResult;; 
<;; %
GetBoardListCommandResult;; 5
>;;5 6
GetList;;7 >
(;;> ?
);;? @
{<< 	
GetBoardListCommand== 
command==  '
===( )
new==* -
GetBoardListCommand==. A
(==A B
)==B C
;==C D
Task?? 
<?? %
GetBoardListCommandResult?? *
>??* +
result??, 2
=??3 4
_boardService??5 B
.??B C
GetList??C J
(??J K
command??K R
)??R S
;??S T
if@@ 
(@@ 
result@@ 
.@@ 
Result@@ 
.@@ 
ResultObject@@ *
.@@* +
Success@@+ 2
)@@2 3
{AA 
returnBB 
OkBB 
(BB 
resultBB  
)BB  !
;BB! "
}CC 
elseDD 
{EE 
returnFF 

BadRequestFF !
(FF! "
resultFF" (
)FF( )
;FF) *
}GG 
}HH 	
[OO 	
RouteOO	 
(OO 
$strOO 
)OO 
]OO 
[PP 	
HttpPostPP	 
]PP 
publicQQ 
ActionResultQQ 
<QQ $
CreateBoardCommandResultQQ 4
>QQ4 5
AddQQ6 9
(QQ9 :
BoardAddInputQQ: G
inputQQH M
)QQM N
{RR 	
CreateBoardCommandSS 
commandSS &
=SS' (
newSS) ,
CreateBoardCommandSS- ?
(SS? @
inputSS@ E
.SSE F
BoardIdSSF M
,SSM N
stringSSO U
.SSU V
EmptySSV [
,SS[ \
inputSS] b
.SSb c
NameSSc g
,SSg h
inputSSi n
.SSn o
DescriptionSSo z
)SSz {
;SS{ |
TaskUU 
<UU $
CreateBoardCommandResultUU )
>UU) *
resultUU+ 1
=UU2 3
_boardServiceUU4 A
.UUA B
AddUUB E
(UUE F
commandUUF M
)UUM N
;UUN O
ifVV 
(VV 
resultVV 
.VV 
ResultVV 
.VV 
ResultObjectVV *
.VV* +
SuccessVV+ 2
)VV2 3
{WW 
returnXX 
OkXX 
(XX 
resultXX  
)XX  !
;XX! "
}YY 
elseZZ 
{[[ 
return\\ 

BadRequest\\ !
(\\! "
result\\" (
)\\( )
;\\) *
}]] 
}^^ 	
[ee 	
Routeee	 
(ee 
$stree 
)ee 
]ee 
[ff 	
	HttpPatchff	 
]ff 
publicgg 
ActionResultgg 
<gg $
UpdateBoardCommandResultgg 4
>gg4 5
Updategg6 <
(gg< =
BoardUpdateInputgg= M
inputggN S
)ggS T
{hh 	
UpdateBoardCommandii 
commandii &
=ii' (
newii) ,
UpdateBoardCommandii- ?
{jj 
BoardIdkk 
=kk 
inputkk 
.kk  
BoardIdkk  '
,kk' (
Namell 
=ll 
inputll 
.ll 
Namell !
,ll! "
Descriptionmm 
=mm 
inputmm #
.mm# $
Descriptionmm$ /
}nn 
;nn 
Taskpp 
<pp $
UpdateBoardCommandResultpp )
>pp) *
resultpp+ 1
=pp2 3
_boardServicepp4 A
.ppA B
UpdateppB H
(ppH I
commandppI P
)ppP Q
;ppQ R
ifqq 
(qq 
resultqq 
.qq 
Resultqq 
.qq 
ResultObjectqq *
.qq* +
Successqq+ 2
)qq2 3
{rr 
returnss 
Okss 
(ss 
resultss  
)ss  !
;ss! "
}tt 
elseuu 
{vv 
returnww 

BadRequestww !
(ww! "
resultww" (
)ww( )
;ww) *
}xx 
}yy 	
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
<
�� &
DeleteBoardCommandResult
�� 4
>
��4 5
Delete
��6 <
(
��< =
BoardDeleteInput
��= M
input
��N S
)
��S T
{
�� 	 
DeleteBoardCommand
�� 
command
�� &
=
��' (
new
��) , 
DeleteBoardCommand
��- ?
(
��? @
input
��@ E
.
��E F
BoardId
��F M
)
��M N
;
��N O
Task
�� 
<
�� &
DeleteBoardCommandResult
�� )
>
��) *
result
��+ 1
=
��2 3
_boardService
��4 A
.
��A B
Delete
��B H
(
��H I
command
��I P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
Result
�� 
.
�� 
ResultObject
�� *
.
��* +
Success
��+ 2
)
��2 3
{
�� 
return
�� 
Ok
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
else
�� 
{
�� 
return
�� 

BadRequest
�� !
(
��! "
result
��" (
)
��( )
;
��) *
}
�� 
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
ActionResult
�� 
<
�� ,
GetBoardSwimLanesCommandResult
�� :
>
��: ;
GetBoardSwimLanes
��< M
(
��M N
string
��N T
boardId
��U \
)
��\ ]
{
�� 	&
GetBoardSwimLanesCommand
�� $
command
��% ,
=
��- .
new
��/ 2&
GetBoardSwimLanesCommand
��3 K
(
��K L
boardId
��L S
)
��S T
;
��T U
Task
�� 
<
�� ,
GetBoardSwimLanesCommandResult
�� /
>
��/ 0
result
��1 7
=
��8 9
_boardService
��: G
.
��G H
GetBoardSwimLanes
��H Y
(
��Y Z
command
��Z a
)
��a b
;
��b c
if
�� 
(
�� 
result
�� 
.
�� 
Result
�� 
.
�� 
ResultObject
�� *
.
��* +
Success
��+ 2
)
��2 3
{
�� 
return
�� 
Ok
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
else
�� 
{
�� 
return
�� 

BadRequest
�� !
(
��! "
result
��" (
)
��( )
;
��) *
}
�� 
}
�� 	
}
�� 
}�� �<
DC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\CardController.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CardController 
:  !
ControllerBase" 0
{ 
private 
readonly 
ICardService %
_cardService& 2
;2 3
public 
CardController 
( 
ICardService *
_service+ 3
)3 4
{ 	
_cardService 
= 
_service #
;# $
} 	
[!! 	
Route!!	 
(!! 
$str!! 
)!! 
]!! 
["" 	
HttpPost""	 
]"" 
public## 
ActionResult## 
<## &
GetCardDetailCommandResult## 6
>##6 7
Get##8 ;
(##; <
CardGetInput##< H
input##I N
)##N O
{$$ 	 
GetCardDetailCommand%%  
command%%! (
=%%) *
new%%+ . 
GetCardDetailCommand%%/ C
{&& 
CardId'' 
='' 
input'' 
.'' 
CardId'' %
}(( 
;(( 
Task)) 
<)) &
GetCardDetailCommandResult)) +
>))+ ,
result))- 3
=))4 5
_cardService))6 B
.))B C
Get))C F
())F G
command))G N
)))N O
;))O P
if++ 
(++ 
result++ 
.++ 
Result++ 
.++ 
ResultObject++ *
.++* +
Success+++ 2
)++2 3
{,, 
return-- 
Ok-- 
(-- 
result--  
)--  !
;--! "
}.. 
else// 
{00 
return11 

BadRequest11 !
(11! "
result11" (
)11( )
;11) *
}22 
}33 	
[<< 	
Route<<	 
(<< 
$str<< 
)<< 
]<< 
[== 	
	HttpPatch==	 
]== 
public>> 
ActionResult>> 
<>> #
UpdateCardCommandResult>> 3
>>>3 4
Update>>5 ;
(>>; <
CardUpdateInput>>< K
input>>L Q
)>>Q R
{?? 	
UpdateCardCommand@@ 
command@@ %
=@@& '
new@@( +
UpdateCardCommand@@, =
{AA 
CardIdBB 
=BB 
inputBB 
.BB 
CardIdBB %
,BB% &
NameCC 
=CC 
inputCC 
.CC 
NameCC !
,CC! "
DescriptionDD 
=DD 
inputDD #
.DD# $
DescriptionDD$ /
}EE 
;EE 
TaskFF 
<FF #
UpdateCardCommandResultFF (
>FF( )
resultFF* 0
=FF1 2
_cardServiceFF3 ?
.FF? @
UpdateFF@ F
(FFF G
commandFFG N
)FFN O
;FFO P
ifHH 
(HH 
resultHH 
.HH 
ResultHH 
.HH 
ResultObjectHH *
.HH* +
SuccessHH+ 2
)HH2 3
{II 
returnJJ 
OkJJ 
(JJ 
resultJJ  
)JJ  !
;JJ! "
}KK 
elseLL 
{MM 
returnNN 

BadRequestNN !
(NN! "
resultNN" (
)NN( )
;NN) *
}OO 
}PP 	
[WW 	
HttpGetWW	 
(WW 
$strWW .
)WW. /
]WW/ 0
publicXX 
ActionResultXX 
<XX *
GetAttachmentListCommandResultXX :
>XX: ;
GetAttachmentListXX< M
(XXM N
stringXXN T
cardIdXXU [
)XX[ \
{YY 	$
GetAttachmentListCommandZZ $
commandZZ% ,
=ZZ- .
newZZ/ 2$
GetAttachmentListCommandZZ3 K
{[[ 
CardId\\ 
=\\ 
cardId\\ 
,\\  
}]] 
;]] 
Task^^ 
<^^ *
GetAttachmentListCommandResult^^ /
>^^/ 0
result^^1 7
=^^8 9
_cardService^^: F
.^^F G
GetAttachmentList^^G X
(^^X Y
command^^Y `
)^^` a
;^^a b
if`` 
(`` 
result`` 
.`` 
Result`` 
.`` 
ResultObject`` *
.``* +
Success``+ 2
)``2 3
{aa 
returnbb 
Okbb 
(bb 
resultbb  
)bb  !
;bb! "
}cc 
elsedd 
{ee 
returnff 

BadRequestff !
(ff! "
resultff" (
)ff( )
;ff) *
}gg 
}hh 	
[oo 	
Routeoo	 
(oo 
$stroo 
)oo 
]oo 
[pp 	
HttpPostpp	 
]pp 
publicqq 
ActionResultqq 
<qq !
MoveCardCommandResultqq 1
>qq1 2
MoveCardqq3 ;
(qq; <
MoveCardCommandqq< K
commandqqL S
)qqS T
{rr 	
MoveCardCommandss 
_commandss $
=ss% &
newss' *
MoveCardCommandss+ :
(ss: ;
commandss; B
.ssB C
CardIdssC I
,ssI J
commandssK R
.ssR S

SwimLaneIdssS ]
)ss] ^
;ss^ _
Tasktt 
<tt !
MoveCardCommandResulttt &
>tt& '
resulttt( .
=tt/ 0
_cardServicett1 =
.tt= >
MoveCardtt> F
(ttF G
_commandttG O
)ttO P
;ttP Q
ifvv 
(vv 
resultvv 
.vv 
Resultvv 
.vv 
ResultObjectvv *
.vv* +
Successvv+ 2
)vv2 3
{ww 
returnxx 
Okxx 
(xx 
resultxx  
)xx  !
;xx! "
}yy 
elsezz 
{{{ 
return|| 

BadRequest|| !
(||! "
result||" (
)||( )
;||) *
}}} 
}
�� 	
[
�� 	
Route
��	 
(
�� 
$str
�� 
)
�� 
]
�� 
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
ActionResult
�� 
<
�� %
CreateCardCommandResult
�� 3
>
��3 4

CreateCard
��5 ?
(
��? @
CreateCardCommand
��@ Q
command
��R Y
)
��Y Z
{
�� 	
Task
�� 
<
�� %
CreateCardCommandResult
�� (
>
��( )
result
��* 0
=
��1 2
_cardService
��3 ?
.
��? @

CreateCard
��@ J
(
��J K
command
��K R
)
��R S
;
��S T
if
�� 
(
�� 
result
�� 
.
�� 
Result
�� 
.
�� 
ResultObject
�� *
.
��* +
Success
��+ 2
)
��2 3
{
�� 
return
�� 
Ok
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
else
�� 
{
�� 
return
�� 

BadRequest
�� !
(
��! "
result
��" (
)
��( )
;
��) *
}
�� 
}
�� 	
}
�� 
}�� �5
HC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\SwimLaneController.cs
	namespace

 	
	KanbanApp


 
.

 
Api

 
.

 
Controllers

 #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
SwimLaneController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ISwimLaneService )
_swimLaneService* :
;: ;
public 
SwimLaneController !
(! "
ISwimLaneService" 2
service3 :
): ;
{ 	
_swimLaneService 
= 
service &
;& '
} 	
[## 	
HttpGet##	 
(## 
$str## #
)### $
]##$ %
public$$ 
ActionResult$$ 
<$$ *
GetSwimlaneDetailCommandResult$$ :
>$$: ;
Get$$< ?
($$? @
string$$@ F

swimLaneId$$G Q
)$$Q R
{%% 	$
GetSwimlaneDetailCommand&& $
command&&% ,
=&&- .
new&&/ 2$
GetSwimlaneDetailCommand&&3 K
{'' 

SwimLaneId(( 
=(( 

swimLaneId(( '
})) 
;)) 
Task** 
<** *
GetSwimlaneDetailCommandResult** /
>**/ 0
result**1 7
=**8 9
_swimLaneService**: J
.**J K
Get**K N
(**N O
command**O V
)**V W
;**W X
if++ 
(++ 
result++ 
.++ 
Result++ 
.++ 
ResultObject++ *
.++* +
Success+++ 2
)++2 3
{,, 
return-- 
Ok-- 
(-- 
result--  
)--  !
;--! "
}.. 
else// 
{00 
return11 

BadRequest11 !
(11! "
result11" (
)11( )
;11) *
}22 
}33 	
[;; 	
Route;;	 
(;; 
$str;; 
);; 
];; 
[<< 	
HttpPost<<	 
]<< 
public== 
ActionResult== 
<== '
CreateSwimlaneCommandResult== 7
>==7 8
Add==9 <
(==< =
SwimLaneAddInput=== M
input==N S
)==S T
{>> 	!
CreateSwimlaneCommand?? !
command??" )
=??* +
new??, /!
CreateSwimlaneCommand??0 E
{@@ 
BoardIdAA 
=AA 
inputAA 
.AA  
BoardIdAA  '
,AA' (

SwimLaneIdBB 
=BB 
inputBB "
.BB" #

SwimLaneIdBB# -
,BB- .
NameCC 
=CC 
inputCC 
.CC 
NameCC !
}DD 
;DD 
TaskEE 
<EE '
CreateSwimlaneCommandResultEE ,
>EE, -
resultEE. 4
=EE5 6
_swimLaneServiceEE7 G
.EEG H
AddEEH K
(EEK L
commandEEL S
)EES T
;EET U
ifFF 
(FF 
resultFF 
.FF 
ResultFF 
.FF 
ResultObjectFF *
.FF* +
SuccessFF+ 2
)FF2 3
{GG 
returnHH 
OkHH 
(HH 
resultHH  
)HH  !
;HH! "
}II 
elseJJ 
{KK 
returnLL 

BadRequestLL !
(LL! "
resultLL" (
)LL( )
;LL) *
}MM 
}NN 	
[WW 	
HttpGetWW	 
(WW 
$strWW :
)WW: ;
]WW; <
publicXX 
ActionResultXX 
<XX )
GetSwimLaneCardsCommandResultXX 9
>XX9 :
GetSwimLaneCardsXX; K
(XXK L
stringXXL R
boardIdXXS Z
,XXZ [
stringXX\ b

swimLaneIdXXc m
)XXm n
{YY 	#
GetSwimLaneCardsCommandZZ #
commandZZ$ +
=ZZ, -
newZZ. 1#
GetSwimLaneCardsCommandZZ2 I
(ZZI J
boardIdZZJ Q
,ZZQ R

swimLaneIdZZS ]
)ZZ] ^
;ZZ^ _
Task[[ 
<[[ )
GetSwimLaneCardsCommandResult[[ .
>[[. /
result[[0 6
=[[7 8
_swimLaneService[[9 I
.[[I J
GetBoardSwimLanes[[J [
([[[ \
command[[\ c
)[[c d
;[[d e
if]] 
(]] 
result]] 
.]] 
Result]] 
.]] 
ResultObject]] *
.]]* +
Success]]+ 2
)]]2 3
{^^ 
return__ 
Ok__ 
(__ 
result__  
)__  !
;__! "
}`` 
elseaa 
{bb 
returncc 

BadRequestcc !
(cc! "
resultcc" (
)cc( )
;cc) *
}dd 
}ee 	
[ll 	
Routell	 
(ll 
$strll 
)ll 
]ll 
[mm 	
	HttpPatchmm	 
]mm 
publicnn 
ActionResultnn 
<nn %
MoveSwimlaneCommandResultnn 5
>nn5 6
Movenn7 ;
(nn; <
SwimLaneMoveInputnn< M
inputnnN S
)nnS T
{oo 	
MoveSwimlaneCommandpp 
commandpp  '
=pp( )
newpp* -
MoveSwimlaneCommandpp. A
{qq 
BoardIdrr 
=rr 
inputrr 
.rr  
BoardIdrr  '
,rr' (

SwimLaneIdss 
=ss 
inputss "
.ss" #

SwimLaneIdss# -
,ss- .
Namett 
=tt 
inputtt 
.tt 
Namett !
,tt! "
Positionuu 
=uu 
inputuu  
.uu  !
Positionuu! )
}vv 
;vv 
Taskww 
<ww %
MoveSwimlaneCommandResultww *
>ww* +
resultww, 2
=ww3 4
_swimLaneServiceww5 E
.wwE F
MovewwF J
(wwJ K
commandwwK R
)wwR S
;wwS T
ifxx 
(xx 
resultxx 
.xx 
Resultxx 
.xx 
ResultObjectxx *
.xx* +
Successxx+ 2
)xx2 3
{yy 
returnzz 
Okzz 
(zz 
resultzz  
)zz  !
;zz! "
}{{ 
else|| 
{}} 
return~~ 

BadRequest~~ !
(~~! "
result~~" (
)~~( )
;~~) *
} 
}
�� 	
}
�� 
}�� �
GC:\TFSProjects\KanbanApp\KanbanApp.Api\Extensions\MediatorExtensions.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 

Extensions "
{ 
public 

static 
class 
MediatorExtensions *
{ 
} 
} ��
TC:\TFSProjects\KanbanApp\KanbanApp.Api\Migrations\20200118123321_MyFirstMigration.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 

Migrations "
{ 
public 

partial 
class 
MyFirstMigration )
:* +
	Migration, 5
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
BoardId 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
,C D
OwnerId 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
true= A
)A B
,B C
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
,? @
Description 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
nullable7 ?
:? @
trueA E
)E F
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 0
,0 1
x2 3
=>4 6
x7 8
.8 9
BoardId9 @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str !
,! "
columns 
: 
table 
=> !
new" %
{ 

CardTypeId 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
nullable6 >
:> ?
false@ E
)E F
,F G
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
} 
, 
constraints   
:   
table   "
=>  # %
{!! 
table"" 
."" 

PrimaryKey"" $
(""$ %
$str""% 3
,""3 4
x""5 6
=>""7 9
x"": ;
.""; <

CardTypeId""< F
)""F G
;""G H
}## 
)## 
;## 
migrationBuilder%% 
.%% 
CreateTable%% (
(%%( )
name&& 
:&& 
$str&& &
,&&& '
columns'' 
:'' 
table'' 
=>'' !
new''" %
{(( 
CardWeightSizeId)) $
=))% &
table))' ,
.)), -
Column))- 3
<))3 4
int))4 7
>))7 8
())8 9
nullable))9 A
:))A B
false))C H
)))H I
.** 

Annotation** #
(**# $
$str**$ G
,**G H,
 SqlServerValueGenerationStrategy**I i
.**i j
IdentityColumn**j x
)**x y
,**y z
CardWeightSizeName++ &
=++' (
table++) .
.++. /
Column++/ 5
<++5 6
string++6 <
>++< =
(++= >
nullable++> F
:++F G
true++H L
)++L M
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% 8
,//8 9
x//: ;
=>//< >
x//? @
.//@ A
CardWeightSizeId//A Q
)//Q R
;//R S
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33  
,33  !
columns44 
:44 
table44 
=>44 !
new44" %
{55 

PriorityId66 
=66  
table66! &
.66& '
Column66' -
<66- .
int66. 1
>661 2
(662 3
nullable663 ;
:66; <
false66= B
)66B C
.77 

Annotation77 #
(77# $
$str77$ G
,77G H,
 SqlServerValueGenerationStrategy77I i
.77i j
IdentityColumn77j x
)77x y
,77y z
Name88 
=88 
table88  
.88  !
Column88! '
<88' (
string88( .
>88. /
(88/ 0
nullable880 8
:888 9
true88: >
)88> ?
,88? @
Color99 
=99 
table99 !
.99! "
Column99" (
<99( )
string99) /
>99/ 0
(990 1
nullable991 9
:999 :
true99; ?
)99? @
}:: 
,:: 
constraints;; 
:;; 
table;; "
=>;;# %
{<< 
table== 
.== 

PrimaryKey== $
(==$ %
$str==% 2
,==2 3
x==4 5
=>==6 8
x==9 :
.==: ;

PriorityId==; E
)==E F
;==F G
}>> 
)>> 
;>> 
migrationBuilder@@ 
.@@ 
CreateTable@@ (
(@@( )
nameAA 
:AA 
$strAA '
,AA' (
columnsBB 
:BB 
tableBB 
=>BB !
newBB" %
{CC 
SwimLaneSettingIdDD %
=DD& '
tableDD( -
.DD- .
ColumnDD. 4
<DD4 5
stringDD5 ;
>DD; <
(DD< =
nullableDD= E
:DDE F
falseDDG L
)DDL M
,DDM N
HeaderColorEE 
=EE  !
tableEE" '
.EE' (
ColumnEE( .
<EE. /
stringEE/ 5
>EE5 6
(EE6 7
nullableEE7 ?
:EE? @
trueEEA E
)EEE F
,EEF G
BackgroundColorFF #
=FF$ %
tableFF& +
.FF+ ,
ColumnFF, 2
<FF2 3
stringFF3 9
>FF9 :
(FF: ;
nullableFF; C
:FFC D
trueFFE I
)FFI J
,FFJ K
MaxCardCountGG  
=GG! "
tableGG# (
.GG( )
ColumnGG) /
<GG/ 0
intGG0 3
>GG3 4
(GG4 5
nullableGG5 =
:GG= >
falseGG? D
)GGD E
}HH 
,HH 
constraintsII 
:II 
tableII "
=>II# %
{JJ 
tableKK 
.KK 

PrimaryKeyKK $
(KK$ %
$strKK% 9
,KK9 :
xKK; <
=>KK= ?
xKK@ A
.KKA B
SwimLaneSettingIdKKB S
)KKS T
;KKT U
}LL 
)LL 
;LL 
migrationBuilderNN 
.NN 
CreateTableNN (
(NN( )
nameOO 
:OO 
$strOO  
,OO  !
columnsPP 
:PP 
tablePP 
=>PP !
newPP" %
{QQ 
	SettingIdRR 
=RR 
tableRR  %
.RR% &
ColumnRR& ,
<RR, -
stringRR- 3
>RR3 4
(RR4 5
nullableRR5 =
:RR= >
falseRR? D
)RRD E
,RRE F
SettingsNameSS  
=SS! "
tableSS# (
.SS( )
ColumnSS) /
<SS/ 0
stringSS0 6
>SS6 7
(SS7 8
nullableSS8 @
:SS@ A
trueSSB F
)SSF G
,SSG H
ValueTT 
=TT 
tableTT !
.TT! "
ColumnTT" (
<TT( )
stringTT) /
>TT/ 0
(TT0 1
nullableTT1 9
:TT9 :
trueTT; ?
)TT? @
,TT@ A
BoardIdUU 
=UU 
tableUU #
.UU# $
ColumnUU$ *
<UU* +
stringUU+ 1
>UU1 2
(UU2 3
nullableUU3 ;
:UU; <
trueUU= A
)UUA B
}VV 
,VV 
constraintsWW 
:WW 
tableWW "
=>WW# %
{XX 
tableYY 
.YY 

PrimaryKeyYY $
(YY$ %
$strYY% 2
,YY2 3
xYY4 5
=>YY6 8
xYY9 :
.YY: ;
	SettingIdYY; D
)YYD E
;YYE F
tableZZ 
.ZZ 

ForeignKeyZZ $
(ZZ$ %
name[[ 
:[[ 
$str[[ :
,[[: ;
column\\ 
:\\ 
x\\  !
=>\\" $
x\\% &
.\\& '
BoardId\\' .
,\\. /
principalTable]] &
:]]& '
$str]]( 0
,]]0 1
principalColumn^^ '
:^^' (
$str^^) 2
,^^2 3
onDelete__  
:__  !
ReferentialAction__" 3
.__3 4
Restrict__4 <
)__< =
;__= >
}`` 
)`` 
;`` 
migrationBuilderbb 
.bb 
CreateTablebb (
(bb( )
namecc 
:cc 
$strcc !
,cc! "
columnsdd 
:dd 
tabledd 
=>dd !
newdd" %
{ee 
BoardIdff 
=ff 
tableff #
.ff# $
Columnff$ *
<ff* +
stringff+ 1
>ff1 2
(ff2 3
nullableff3 ;
:ff; <
trueff= A
)ffA B
,ffB C

SwimLaneIdgg 
=gg  
tablegg! &
.gg& '
Columngg' -
<gg- .
stringgg. 4
>gg4 5
(gg5 6
nullablegg6 >
:gg> ?
falsegg@ E
)ggE F
,ggF G
Namehh 
=hh 
tablehh  
.hh  !
Columnhh! '
<hh' (
stringhh( .
>hh. /
(hh/ 0
nullablehh0 8
:hh8 9
truehh: >
)hh> ?
,hh? @
Positionii 
=ii 
tableii $
.ii$ %
Columnii% +
<ii+ ,
intii, /
>ii/ 0
(ii0 1
nullableii1 9
:ii9 :
falseii; @
)ii@ A
,iiA B%
SettingsSwimLaneSettingIdjj -
=jj. /
tablejj0 5
.jj5 6
Columnjj6 <
<jj< =
stringjj= C
>jjC D
(jjD E
nullablejjE M
:jjM N
truejjO S
)jjS T
}kk 
,kk 
constraintsll 
:ll 
tablell "
=>ll# %
{mm 
tablenn 
.nn 

PrimaryKeynn $
(nn$ %
$strnn% 3
,nn3 4
xnn5 6
=>nn7 9
xnn: ;
.nn; <

SwimLaneIdnn< F
)nnF G
;nnG H
tableoo 
.oo 

ForeignKeyoo $
(oo$ %
namepp 
:pp 
$strpp ;
,pp; <
columnqq 
:qq 
xqq  !
=>qq" $
xqq% &
.qq& '
BoardIdqq' .
,qq. /
principalTablerr &
:rr& '
$strrr( 0
,rr0 1
principalColumnss '
:ss' (
$strss) 2
,ss2 3
onDeletett  
:tt  !
ReferentialActiontt" 3
.tt3 4
Restricttt4 <
)tt< =
;tt= >
tableuu 
.uu 

ForeignKeyuu $
(uu$ %
namevv 
:vv 
$strvv V
,vvV W
columnww 
:ww 
xww  !
=>ww" $
xww% &
.ww& '%
SettingsSwimLaneSettingIdww' @
,ww@ A
principalTablexx &
:xx& '
$strxx( 9
,xx9 :
principalColumnyy '
:yy' (
$stryy) <
,yy< =
onDeletezz  
:zz  !
ReferentialActionzz" 3
.zz3 4
Restrictzz4 <
)zz< =
;zz= >
}{{ 
){{ 
;{{ 
migrationBuilder}} 
.}} 
CreateTable}} (
(}}( )
name~~ 
:~~ 
$str~~ 
,~~ 
columns 
: 
table 
=> !
new" %
{
�� 
BoardId
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
string
��+ 1
>
��1 2
(
��2 3
nullable
��3 ;
:
��; <
true
��= A
)
��A B
,
��B C

SwimLaneId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
string
��. 4
>
��4 5
(
��5 6
nullable
��6 >
:
��> ?
true
��@ D
)
��D E
,
��E F
CardId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
Description
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
nullable
��7 ?
:
��? @
true
��A E
)
��E F
,
��F G$
CardPriorityPriorityId
�� *
=
��+ ,
table
��- 2
.
��2 3
Column
��3 9
<
��9 :
int
��: =
>
��= >
(
��> ?
nullable
��? G
:
��G H
true
��I M
)
��M N
,
��N O
TypeCardTypeId
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
string
��2 8
>
��8 9
(
��9 :
nullable
��: B
:
��B C
true
��D H
)
��H I
,
��I J
CardPosition
��  
=
��! "
table
��# (
.
��( )
Column
��) /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
nullable
��5 =
:
��= >
false
��? D
)
��D E
,
��E F
CardWeightSizeId
�� $
=
��% &
table
��' ,
.
��, -
Column
��- 3
<
��3 4
int
��4 7
>
��7 8
(
��8 9
nullable
��9 A
:
��A B
true
��C G
)
��G H
,
��H I
EstimateHours
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
int
��1 4
>
��4 5
(
��5 6
nullable
��6 >
:
��> ?
false
��@ E
)
��E F
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% /
,
��/ 0
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
CardId
��8 >
)
��> ?
;
��? @
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� H
,
��H I
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '$
CardPriorityPriorityId
��' =
,
��= >
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) 5
,
��5 6
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� H
,
��H I
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
CardWeightSizeId
��' 7
,
��7 8
principalTable
�� &
:
��& '
$str
��( 8
,
��8 9
principalColumn
�� '
:
��' (
$str
��) ;
,
��; <
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� =
,
��= >
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

SwimLaneId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) 5
,
��5 6
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� A
,
��A B
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
TypeCardTypeId
��' 5
,
��5 6
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) 5
,
��5 6
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
CardId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
,
��A B
CardAttachmentId
�� $
=
��% &
table
��' ,
.
��, -
Column
��- 3
<
��3 4
string
��4 :
>
��: ;
(
��; <
nullable
��< D
:
��D E
false
��F K
)
��K L
,
��L M
AttachmentName
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
string
��2 8
>
��8 9
(
��9 :
nullable
��: B
:
��B C
true
��D H
)
��H I
,
��I J$
AttachmentDownloadLink
�� *
=
��+ ,
table
��- 2
.
��2 3
Column
��3 9
<
��9 :
string
��: @
>
��@ A
(
��A B
nullable
��B J
:
��J K
true
��L P
)
��P Q
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 9
,
��9 :
x
��; <
=>
��= ?
x
��@ A
.
��A B
CardAttachmentId
��B R
)
��R S
;
��S T
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� ?
,
��? @
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
CardId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
��  
,
��  !
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 

CardTaskId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
string
��. 4
>
��4 5
(
��5 6
nullable
��6 >
:
��> ?
false
��@ E
)
��E F
,
��F G
Text
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
CardTaskState
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
int
��1 4
>
��4 5
(
��5 6
nullable
��6 >
:
��> ?
false
��@ E
)
��E F
,
��F G
DueDate
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
DateTime
��+ 3
>
��3 4
(
��4 5
nullable
��5 =
:
��= >
false
��? D
)
��D E
,
��E F
Estimate
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
float
��, 1
>
��1 2
(
��2 3
nullable
��3 ;
:
��; <
false
��= B
)
��B C
,
��C D
CardId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 2
,
��2 3
x
��4 5
=>
��6 8
x
��9 :
.
��: ;

CardTaskId
��; E
)
��E F
;
��F G
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 8
,
��8 9
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
CardId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
TagId
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
false
��; @
)
��@ A
,
��A B
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
CardId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% -
,
��- .
x
��/ 0
=>
��1 3
x
��4 5
.
��5 6
TagId
��6 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 3
,
��3 4
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
CardId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
UserName
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
nullable
��4 <
:
��< =
true
��> B
)
��B C
,
��C D
EMail
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
,
��@ A
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
Surname
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
string
��+ 1
>
��1 2
(
��2 3
nullable
��3 ;
:
��; <
true
��= A
)
��A B
,
��B C
ProfilePicture
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
string
��2 8
>
��8 9
(
��9 :
nullable
��: B
:
��B C
true
��D H
)
��H I
,
��I J
CardId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
,
��A B

CardTaskId
�� 
=
��  
table
��! &
.
��& '
Column
��' -
<
��- .
string
��. 4
>
��4 5
(
��5 6
nullable
��6 >
:
��> ?
true
��@ D
)
��D E
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% /
,
��/ 0
x
��1 2
=>
��3 5
x
��6 7
.
��7 8
UserId
��8 >
)
��> ?
;
��? @
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 5
,
��5 6
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
CardId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( /
,
��/ 0
principalColumn
�� '
:
��' (
$str
��) 1
,
��1 2
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� <
,
��< =
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '

CardTaskId
��' 1
,
��1 2
principalTable
�� &
:
��& '
$str
��( 2
,
��2 3
principalColumn
�� '
:
��' (
$str
��) 5
,
��5 6
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 7
,
��7 8
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� 0
)
��0 1
;
��1 2
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� *
)
��* +
;
��+ ,
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� /
,
��/ 0
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ,
,
��, -
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� >
,
��> ?
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� 3
)
��3 4
;
��4 5
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� +
,
��+ ,
table
�� 
:
�� 
$str
�� 
,
�� 
column
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
}
�� 	
}
�� 
}�� �
KC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardAddInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardAddInput 
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
NC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardDeleteInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardDeleteInput !
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
KC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardGetInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardGetInput 
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
NC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardUpdateInput !
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 �
CC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Cards\CardGetInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Cards $
{ 
public 

class 
CardGetInput 
{ 
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
FC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Cards\CardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Cards $
{ 
public 

class 
CardUpdateInput  
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
}

 
} �
QC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\SwimLanes\Input\SwimLaneAddInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
	SwimLanes (
.( )
Input) .
{ 
public 

class 
SwimLaneAddInput !
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 �
RC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\SwimLanes\Input\SwimLaneMoveInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
	SwimLanes (
.( )
Input) .
{ 
public 

class 
SwimLaneMoveInput "
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 

SwimLaneId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
int

 
Position

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} �/
1C:\TFSProjects\KanbanApp\KanbanApp.Api\Program.cs
	namespace

 	
	KanbanApp


 
.

 
Api

 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
ConfigureLogging 
( 
) 
; 
try 
{ 
Log 
. 
Information 
(  
$str  8
)8 9
;9 : 
CreateWebHostBuilder $
($ %
args% )
)) *
.* +
Build+ 0
(0 1
)1 2
.2 3
Run3 6
(6 7
)7 8
;8 9
} 
catch 
( 
	Exception 
ex 
)  
{ 
Log 
. 
Fatal 
( 
ex 
, 
$str F
)F G
;G H
} 
finally 
{ 
Log 
. 
CloseAndFlush !
(! "
)" #
;# $
} 
}"" 	
private$$ 
static$$ 
void$$ 
ConfigureLogging$$ ,
($$, -
)$$- .
{%% 	
var&& 
environment&& 
=&& 
Environment&& )
.&&) *"
GetEnvironmentVariable&&* @
(&&@ A
$str&&A Y
)&&Y Z
;&&Z [
var'' 
configuration'' 
='' 
new''  # 
ConfigurationBuilder''$ 8
(''8 9
)''9 :
.(( 
AddJsonFile(( 
((( 
$str(( /
,((/ 0
optional((1 9
:((9 :
false((; @
,((@ A
reloadOnChange((B P
:((P Q
true((R V
)((V W
.)) 
AddJsonFile)) 
()) 
$"** 
appsettings.** "
{**" #
Environment**# .
.**. /"
GetEnvironmentVariable**/ E
(**E F
$str**F ^
)**^ _
}**_ `
.json**` e
"**e f
,**f g
optional++ 
:++ 
true++ "
)++" #
.,, 
Build,, 
(,, 
),, 
;,, 
Log.. 
... 
Logger.. 
=.. 
new.. 
LoggerConfiguration.. 0
(..0 1
)..1 2
.// 
Enrich// 
.// 
FromLogContext// &
(//& '
)//' (
.00 
Enrich00 
.00  
WithExceptionDetails00 ,
(00, -
)00- .
.11 
Enrich11 
.11 
WithMachineName11 '
(11' (
)11( )
.22 
WriteTo22 
.22 
Debug22 
(22 
)22  
.33 
WriteTo33 
.33 
Console33  
(33  !
)33! "
.44 
WriteTo44 
.44 
Elasticsearch44 &
(44& ' 
ConfigureElasticSink44' ;
(44; <
configuration44< I
,44I J
environment44K V
)44V W
)44W X
.55 
Enrich55 
.55 
WithProperty55 $
(55$ %
$str55% 2
,552 3
environment554 ?
)55? @
.66 
ReadFrom66 
.66 
Configuration66 '
(66' (
configuration66( 5
)665 6
.77 
CreateLogger77 
(77 
)77 
;77  
}:: 	
private<< 
static<< $
ElasticsearchSinkOptions<< / 
ConfigureElasticSink<<0 D
(<<D E
IConfigurationRoot<<E W
configuration<<X e
,<<e f
string<<g m
environment<<n y
)<<y z
{== 	
return>> 
new>> $
ElasticsearchSinkOptions>> /
(>>/ 0
new>>0 3
Uri>>4 7
(>>7 8
configuration>>8 E
[>>E F
$str>>F `
]>>` a
)>>a b
)>>b c
{??  
AutoRegisterTemplate@@ $
=@@% &
true@@' +
,@@+ ,
IndexFormatAA 
=AA 
$"AA  
{AA  !
AssemblyAA! )
.AA) * 
GetExecutingAssemblyAA* >
(AA> ?
)AA? @
.AA@ A
GetNameAAA H
(AAH I
)AAI J
.AAJ K
NameAAK O
.AAO P
ToLowerAAP W
(AAW X
)AAX Y
.AAY Z
ReplaceAAZ a
(AAa b
$strAAb e
,AAe f
$strAAg j
)AAj k
}AAk l
-AAl m
{AAm n
environmentAAn y
?AAy z
.AAz {
ToLower	AA{ �
(
AA� �
)
AA� �
.
AA� �
Replace
AA� �
(
AA� �
$str
AA� �
,
AA� �
$str
AA� �
)
AA� �
}
AA� �
-
AA� �
{
AA� �
DateTime
AA� �
.
AA� �
UtcNow
AA� �
:
AA� �
yyyy-MM
AA� �
}
AA� �
"
AA� �
}BB 
;BB 
}CC 	
publicEE 
staticEE 
IWebHostBuilderEE % 
CreateWebHostBuilderEE& :
(EE: ;
stringEE; A
[EEA B
]EEB C
argsEED H
)EEH I
=>EEJ L
WebHostFF 
.FF  
CreateDefaultBuilderFF (
(FF( )
argsFF) -
)FF- .
.GG  
CaptureStartupErrorsGG %
(GG% &
trueGG& *
)GG* +
.HH 

UseSerilogHH 
(HH 
)HH 
.II 

UseStartupII 
<II 
StartupII #
>II# $
(II$ %
)II% &
;II& '
}LL 
}MM �H
1C:\TFSProjects\KanbanApp\KanbanApp.Api\Startup.cs
	namespace 	
	KanbanApp
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public!! 
void!! 
ConfigureServices!! %
(!!% &
IServiceCollection!!& 8
services!!9 A
)!!A B
{"" 	
services## 
.## 
AddMvc## 
(## 
option## "
=>### %
option##& ,
.##, -!
EnableEndpointRouting##- B
=##C D
false##E J
)##J K
.##K L#
SetCompatibilityVersion##L c
(##c d 
CompatibilityVersion##d x
.##x y
Version_2_1	##y �
)
##� �
.
##� �
AddJsonOptions
##� �
(
##� �
options
##� �
=>
##� �
{$$ 
options%% 
.%% !
JsonSerializerOptions%% -
.%%- .
MaxDepth%%. 6
=%%7 8
$num%%9 ;
;%%; <
}&& 
)&& 
;&& 
services(( 
.(( 
AddDbContext(( !
<((! "
KanbanContext((" /
>((/ 0
(((0 1
option((1 7
=>((8 :
option((; A
.((A B
UseSqlServer((B N
(((N O
$str	((O �
,
((� �
b
((� �
=>
((� �
b
((� �
.
((� � 
MigrationsAssembly
((� �
(
((� �
$str
((� �
)
((� �
)
((� �
)
((� �
;
((� �
services** 
.** 
	AddScoped** 
<** 
IRequestHandler** .
<**. /$
GetBoardSwimLanesCommand**/ G
,**G H*
GetBoardSwimLanesCommandResult**I g
>**g h
,**h i,
GetBoardSwimLanesCommandHandler	**j �
>
**� �
(
**� �
)
**� �
;
**� �
services++ 
.++ 
	AddScoped++ 
<++ 
IRequestHandler++ .
<++. /#
GetSwimLaneCardsCommand++/ F
,++F G)
GetSwimLaneCardsCommandResult++H e
>++e f
,++f g+
GetSwimLaneCardsCommandHandler	++h �
>
++� �
(
++� �
)
++� �
;
++� �
services,, 
.,, 
	AddScoped,, 
<,, 
IRequestHandler,, .
<,,. /
MoveCardCommand,,/ >
,,,> ?!
MoveCardCommandResult,,@ U
>,,U V
,,,V W"
MoveCardCommandHandler,,X n
>,,n o
(,,o p
),,p q
;,,q r
services-- 
.-- 
	AddScoped-- 
<-- 
IRequestHandler-- .
<--. /
CreateCardCommand--/ @
,--@ A#
CreateCardCommandResult--B Y
>--Y Z
,--Z [$
CreateCardCommandHandler--\ t
>--t u
(--u v
)--v w
;--w x
services.. 
... 
	AddScoped.. 
<.. 
IRequestHandler.. .
<... /
CreateBoardCommand../ A
,..A B$
CreateBoardCommandResult..C [
>..[ \
,..\ ]%
CreateBoardCommandHandler..^ w
>..w x
(..x y
)..y z
;..z {
services// 
.// 
	AddScoped// 
<// 
IRequestHandler// .
<//. /!
GetBoardDetailCommand/// D
,//D E'
GetBoardDetailCommandResult//F a
>//a b
,//b c)
GetBoardDetailCommandHandler	//d �
>
//� �
(
//� �
)
//� �
;
//� �
services11 
.11 

AddMediatR11 
(11  
typeof11  &
(11& '
Startup11' .
)11. /
)11/ 0
;110 1
services22 
.22 
	AddScoped22 
<22 
	IMediator22 (
,22( )
Mediator22* 2
>222 3
(223 4
)224 5
;225 6
services55 
.55 
AddTransient55 !
<55! "
IBoardRepository55" 2
,552 3
EfBoardRepository554 E
>55E F
(55F G
)55G H
;55H I
services66 
.66 
AddTransient66 !
<66! "
IBoardService66" /
,66/ 0
BoardService661 =
>66= >
(66> ?
)66? @
;66@ A
services88 
.88 
AddTransient88 !
<88! "
ISwimLaneRepository88" 5
,885 6 
EfSwimLaneRepository887 K
>88K L
(88L M
)88M N
;88N O
services99 
.99 
AddTransient99 !
<99! "
ISwimLaneService99" 2
,992 3
SwimLaneService994 C
>99C D
(99D E
)99E F
;99F G
services;; 
.;; 
AddTransient;; !
<;;! "
ICardRepository;;" 1
,;;1 2
EfCardRepository;;3 C
>;;C D
(;;D E
);;E F
;;;F G
services<< 
.<< 
AddTransient<< !
<<<! "
ICardService<<" .
,<<. /
CardService<<0 ;
><<; <
(<<< =
)<<= >
;<<> ?
services>> 
.>> 
AddCors>> 
(>> 
c>> 
=>>> !
{?? 
c@@ 
.@@ 
	AddPolicy@@ 
(@@ 
$str@@ )
,@@) *
options@@+ 2
=>@@3 5
options@@6 =
.@@= >
AllowAnyOrigin@@> L
(@@L M
)@@M N
)@@N O
;@@O P
}AA 
)AA 
;AA 
servicesDD 
.DD 
AddSwaggerGenDD "
(DD" #
cDD# $
=>DD% '
{EE 
cFF 
.FF 

SwaggerDocFF 
(FF 
$strFF !
,FF! "
newFF# &
OpenApiInfoFF' 2
{GG 
VersionHH 
=HH 
$strHH "
,HH" #
TitleII 
=II 
$strII (
,II( )
DescriptionJJ 
=JJ  !
$strJJ" I
,JJI J
TermsOfServiceKK "
=KK# $
newKK% (
UriKK) ,
(KK, -
$strKK- H
)KKH I
,KKI J
ContactLL 
=LL 
newLL !
OpenApiContactLL" 0
{MM 
NameNN 
=NN 
$strNN 0
,NN0 1
EmailOO 
=OO 
$strOO  3
,OO3 4
UrlPP 
=PP 
newPP !
UriPP" %
(PP% &
$strPP& @
)PP@ A
,PPA B
}QQ 
,QQ 
LicenseRR 
=RR 
newRR !
OpenApiLicenseRR" 0
{SS 
NameTT 
=TT 
$strTT /
,TT/ 0
UrlUU 
=UU 
newUU !
UriUU" %
(UU% &
$strUU& C
)UUC D
,UUD E
}VV 
}WW 
)WW 
;WW 
}XX 
)XX 
;XX 
}YY 	
public\\ 
void\\ 
	Configure\\ 
(\\ 
IApplicationBuilder\\ 1
app\\2 5
,\\5 6
IHostingEnvironment\\7 J
env\\K N
)\\N O
{]] 	
if^^ 
(^^ 
env^^ 
.^^ 
IsDevelopment^^ !
(^^! "
)^^" #
)^^# $
{__ 
app`` 
.`` %
UseDeveloperExceptionPage`` -
(``- .
)``. /
;``/ 0
}aa 
elsebb 
{cc 
appdd 
.dd 
UseHstsdd 
(dd 
)dd 
;dd 
}ee 
appgg 
.gg 
UseCorsgg 
(gg 
buildergg 
=>gg  "
builderhh 
.hh 
AllowAnyOriginhh (
(hh( )
)hh) *
.hh* +
AllowAnyMethodhh+ 9
(hh9 :
)hh: ;
)ii 
;ii 
appll 
.ll 
UseMvcll 
(ll 
)ll 
;ll 
appoo 
.oo 

UseSwaggeroo 
(oo 
)oo 
;oo 
apprr 
.rr 
UseSwaggerUIrr 
(rr 
crr 
=>rr !
{ss 
ctt 
.tt 
SwaggerEndpointtt !
(tt! "
$strtt" <
,tt< =
$strtt> M
)ttM N
;ttN O
}uu 
)uu 
;uu 
appww 
.ww 
UseStaticFilesww 
(ww 
)ww  
;ww  !
appxx 
.xx 

UseRoutingxx 
(xx 
)xx 
;xx 
}zz 	
}{{ 
}|| 