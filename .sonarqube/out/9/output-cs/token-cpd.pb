´|
EC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\BoardController.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
BoardController  
:! "
ControllerBase# 1
{ 
private 
readonly 
IBoardService &
_boardService' 4
;4 5
public 
BoardController 
( 
IBoardService ,
_service- 5
)5 6
{ 	
_boardService 
= 
_service $
;$ %
}!! 	
[(( 	
HttpPost((	 
](( 
public)) 
ActionResult)) 
<)) 
BoardGetOutput)) *
>))* +
Get)), /
())/ 0
BoardGetInput))0 =
input))> C
)))C D
{** 	!
GetBoardDetailCommand++ !
command++" )
=++* +
new++, /!
GetBoardDetailCommand++0 E
(++E F
input++F K
.++K L
BoardId++L S
)++S T
;++T U
BoardGetOutput,, 
returnValue,, &
=,,' (
new,,) ,
BoardGetOutput,,- ;
(,,; <
),,< =
;,,= >
Task.. 
<.. '
GetBoardDetailCommandResult.. ,
>.., -
result... 4
=..5 6
_boardService..7 D
...D E
Get..E H
(..H I
command..I P
)..P Q
;..Q R
if// 
(// 
result// 
.// 
Result// 
.// 
ResultObject// *
.//* +
Success//+ 2
)//2 3
{00 
returnValue11 
.11 
BoardId11 #
=11$ %
result11& ,
.11, -
Result11- 3
.113 4
ResultObject114 @
.11@ A
Data11A E
.11E F
BoardId11F M
;11M N
returnValue22 
.22 
Name22  
=22! "
result22# )
.22) *
Result22* 0
.220 1
ResultObject221 =
.22= >
Data22> B
.22B C
Name22C G
;22G H
returnValue33 
.33 
Description33 '
=33( )
result33* 0
.330 1
Result331 7
.337 8
ResultObject338 D
.33D E
Data33E I
.33I J
Description33J U
;33U V
returnValue44 
.44 
	IsSuccess44 %
=44& '
true44( ,
;44, -
return55 
Ok55 
(55 
returnValue55 %
)55% &
;55& '
}66 
else77 
{99 
returnValue:: 
.:: 
	IsSuccess:: %
=::& '
false::( -
;::- .
returnValue;; 
.;; 
MessageList;; '
=;;( )
new;;* -
List;;. 2
<;;2 3
string;;3 9
>;;9 :
(;;: ;
);;; <
;;;< =
returnValue<< 
.<< 
MessageList<< '
[<<' (
$num<<( )
]<<) *
=<<+ ,
result<<- 3
.<<3 4
Result<<4 :
.<<: ;
ResultObject<<; G
.<<G H
GetErrorMessageList<<H [
(<<[ \
)<<\ ]
[<<] ^
$num<<^ _
]<<_ `
.<<` a
UserFriendlyText<<a q
;<<q r
return== 

BadRequest== !
(==! "
returnValue==" -
)==- .
;==. /
}>> 
}?? 	
publicAA 
staticAA 
BoardGetOutputAA $9
-GetBoardListCommandResultItemToBoardGetOutputAA% R
(AAR S)
GetBoardListCommandResultItemAAS p
inputAAq v
)AAv w
{BB 	
returnCC 
newCC 
BoardGetOutputCC %
(CC% &
)CC& '
{DD 
BoardIdEE 
=EE 
inputEE 
.EE  
BoardIdEE  '
,EE' (
NameFF 
=FF 
inputFF 
.FF 
NameFF !
,FF! "
DescriptionGG 
=GG 
inputGG #
.GG# $
DescriptionGG$ /
}II 
;II 
}JJ 	
[PP 	
RoutePP	 
(PP 
$strPP 
)PP 
]PP 
[QQ 	
HttpGetQQ	 
]QQ 
publicRR 
ActionResultRR 
<RR 
ListRR  
<RR  !
BoardGetOutputRR! /
>RR/ 0
>RR0 1
GetListRR2 9
(RR9 :
)RR: ;
{SS 	
GetBoardListCommandTT 
commandTT  '
=TT( )
newTT* -
GetBoardListCommandTT. A
(TTA B
)TTB C
;TTC D
ListUU 
<UU 
BoardGetOutputUU 
>UU  
returnValueUU! ,
=UU- .
newUU/ 2
ListUU3 7
<UU7 8
BoardGetOutputUU8 F
>UUF G
(UUG H
)UUH I
;UUI J
TaskVV 
<VV %
GetBoardListCommandResultVV *
>VV* +
resultVV, 2
=VV3 4
_boardServiceVV5 B
.VVB C
GetListVVC J
(VVJ K
commandVVK R
)VVR S
;VVS T
ifWW 
(WW 
resultWW 
.WW 
ResultWW 
.WW 
ResultObjectWW *
.WW* +
SuccessWW+ 2
)WW2 3
{XX 
returnValueYY 
=YY 
resultYY $
.YY$ %
ResultYY% +
.YY+ ,
ResultObjectYY, 8
.YY8 9
DataYY9 =
.YY= >

ConvertAllYY> H
<YYH I
BoardGetOutputYYI W
>YYW X
(YYX Y
newYYY \
	ConverterYY] f
<YYf g*
GetBoardListCommandResultItem	YYg Ñ
,
YYÑ Ö
BoardGetOutput
YYÜ î
>
YYî ï
(
YYï ñ;
-GetBoardListCommandResultItemToBoardGetOutput
YYñ √
)
YY√ ƒ
)
YYƒ ≈
;
YY≈ ∆
returnZZ 
OkZZ 
(ZZ 
returnValueZZ %
)ZZ% &
;ZZ& '
}[[ 
else\\ 
{]] 
return^^ 

BadRequest^^ !
(^^! "
returnValue^^" -
)^^- .
;^^. /
}__ 
}`` 	
[gg 	
Routegg	 
(gg 
$strgg 
)gg 
]gg 
[hh 	
HttpPosthh	 
]hh 
publicii 
ActionResultii 
<ii 
BoardAddOutputii *
>ii* +
Addii, /
(ii/ 0
BoardAddInputii0 =
inputii> C
)iiC D
{jj 	
CreateBoardCommandkk 
commandkk &
=kk' (
newkk) ,
CreateBoardCommandkk- ?
(kk? @
inputkk@ E
.kkE F
BoardIdkkF M
,kkM N
stringkkO U
.kkU V
EmptykkV [
,kk[ \
inputkk] b
.kkb c
Namekkc g
,kkg h
inputkki n
.kkn o
Descriptionkko z
)kkz {
;kk{ |
BoardAddOutputll 
returnValuell &
=ll' (
newll) ,
BoardAddOutputll- ;
(ll; <
)ll< =
;ll= >
Taskmm 
<mm $
CreateBoardCommandResultmm )
>mm) *
resultmm+ 1
=mm2 3
_boardServicemm4 A
.mmA B
AddmmB E
(mmE F
commandmmF M
)mmM N
;mmN O
returnValueoo 
.oo 
BoardIdoo 
=oo  !
resultoo" (
.oo( )
Resultoo) /
.oo/ 0
ResultObjectoo0 <
.oo< =
Dataoo= A
.ooA B
BoardIdooB I
;ooI J
returnValuepp 
.pp 
Namepp 
=pp 
resultpp %
.pp% &
Resultpp& ,
.pp, -
ResultObjectpp- 9
.pp9 :
Datapp: >
.pp> ?
Namepp? C
;ppC D
returnValueqq 
.qq 
Descriptionqq #
=qq$ %
resultqq& ,
.qq, -
Resultqq- 3
.qq3 4
ResultObjectqq4 @
.qq@ A
DataqqA E
.qqE F
DescriptionqqF Q
;qqQ R
returnValuerr 
.rr 
	IsSuccessrr !
=rr" #
truerr$ (
;rr( )
iftt 
(tt 
resulttt 
.tt 
Resulttt 
.tt 
ResultObjecttt *
.tt* +
Successtt+ 2
)tt2 3
{uu 
returnvv 
Okvv 
(vv 
resultvv  
)vv  !
;vv! "
}ww 
elsexx 
{yy 
returnValuezz 
.zz 
	IsSuccesszz %
=zz& '
falsezz( -
;zz- .
return{{ 

BadRequest{{ !
({{! "
result{{" (
){{( )
;{{) *
}|| 
}}} 	
[
ÑÑ 	
Route
ÑÑ	 
(
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
]
ÑÑ 
[
ÖÖ 	
	HttpPatch
ÖÖ	 
]
ÖÖ 
public
ÜÜ 
ActionResult
ÜÜ 
<
ÜÜ &
UpdateBoardCommandResult
ÜÜ 4
>
ÜÜ4 5
Update
ÜÜ6 <
(
ÜÜ< =
BoardUpdateInput
ÜÜ= M
input
ÜÜN S
)
ÜÜS T
{
áá 	 
UpdateBoardCommand
àà 
command
àà &
=
àà' (
new
àà) , 
UpdateBoardCommand
àà- ?
{
ââ 
BoardId
ää 
=
ää 
input
ää 
.
ää  
BoardId
ää  '
,
ää' (
Name
ãã 
=
ãã 
input
ãã 
.
ãã 
Name
ãã !
,
ãã! "
Description
åå 
=
åå 
input
åå #
.
åå# $
Description
åå$ /
}
çç 
;
çç 
Task
èè 
<
èè &
UpdateBoardCommandResult
èè )
>
èè) *
result
èè+ 1
=
èè2 3
_boardService
èè4 A
.
èèA B
Update
èèB H
(
èèH I
command
èèI P
)
èèP Q
;
èèQ R
if
êê 
(
êê 
result
êê 
.
êê 
Result
êê 
.
êê 
ResultObject
êê *
.
êê* +
Success
êê+ 2
)
êê2 3
{
ëë 
return
íí 
Ok
íí 
(
íí 
result
íí  
)
íí  !
;
íí! "
}
ìì 
else
îî 
{
ïï 
return
ññ 

BadRequest
ññ !
(
ññ! "
result
ññ" (
)
ññ( )
;
ññ) *
}
óó 
}
òò 	
[
†† 	
Route
††	 
(
†† 
$str
†† 
)
†† 
]
†† 
[
°° 	
HttpPost
°°	 
]
°° 
public
¢¢ 
ActionResult
¢¢ 
<
¢¢ &
DeleteBoardCommandResult
¢¢ 4
>
¢¢4 5
Delete
¢¢6 <
(
¢¢< =
BoardDeleteInput
¢¢= M
input
¢¢N S
)
¢¢S T
{
££ 	 
DeleteBoardCommand
§§ 
command
§§ &
=
§§' (
new
§§) , 
DeleteBoardCommand
§§- ?
(
§§? @
input
§§@ E
.
§§E F
BoardId
§§F M
)
§§M N
;
§§N O
Task
¶¶ 
<
¶¶ &
DeleteBoardCommandResult
¶¶ )
>
¶¶) *
result
¶¶+ 1
=
¶¶2 3
_boardService
¶¶4 A
.
¶¶A B
Delete
¶¶B H
(
¶¶H I
command
¶¶I P
)
¶¶P Q
;
¶¶Q R
if
ßß 
(
ßß 
result
ßß 
.
ßß 
Result
ßß 
.
ßß 
ResultObject
ßß *
.
ßß* +
Success
ßß+ 2
)
ßß2 3
{
®® 
return
©© 
Ok
©© 
(
©© 
result
©©  
)
©©  !
;
©©! "
}
™™ 
else
´´ 
{
¨¨ 
return
≠≠ 

BadRequest
≠≠ !
(
≠≠! "
result
≠≠" (
)
≠≠( )
;
≠≠) *
}
ÆÆ 
}
ØØ 	
[
∑∑ 	
HttpGet
∑∑	 
(
∑∑ 
$str
∑∑ .
)
∑∑. /
]
∑∑/ 0
public
∏∏ 
ActionResult
∏∏ 
<
∏∏ 
List
∏∏  
<
∏∏  !"
BoardSwimlanesOutput
∏∏! 5
>
∏∏5 6
>
∏∏6 7
GetBoardSwimLanes
∏∏8 I
(
∏∏I J
string
∏∏J P
boardId
∏∏Q X
)
∏∏X Y
{
ππ 	
List
∫∫ 
<
∫∫ "
BoardSwimlanesOutput
∫∫ %
>
∫∫% &
returnValue
∫∫' 2
=
∫∫3 4
new
∫∫5 8
List
∫∫9 =
<
∫∫= >"
BoardSwimlanesOutput
∫∫> R
>
∫∫R S
(
∫∫S T
)
∫∫T U
;
∫∫U V&
GetBoardSwimLanesCommand
ºº $
command
ºº% ,
=
ºº- .
new
ºº/ 2&
GetBoardSwimLanesCommand
ºº3 K
(
ººK L
boardId
ººL S
)
ººS T
;
ººT U
Task
ΩΩ 
<
ΩΩ ,
GetBoardSwimLanesCommandResult
ΩΩ /
>
ΩΩ/ 0
result
ΩΩ1 7
=
ΩΩ8 9
_boardService
ΩΩ: G
.
ΩΩG H
GetBoardSwimLanes
ΩΩH Y
(
ΩΩY Z
command
ΩΩZ a
)
ΩΩa b
;
ΩΩb c
returnValue
øø 
=
øø 
result
øø  
.
øø  !
Result
øø! '
.
øø' (
ResultObject
øø( 4
.
øø4 5
Data
øø5 9
.
øø9 :

ConvertAll
øø: D
<
øøD E"
BoardSwimlanesOutput
øøE Y
>
øøY Z
(
øøZ [
new
øø[ ^
	Converter
øø_ h
<
øøh i1
"GetBoardSwimLanesCommandResultItemøøi ã
,øøã å$
BoardSwimlanesOutputøøç °
>øø° ¢
(øø¢ £H
8GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutputøø£ €
)øø€ ‹
)øø‹ ›
;øø› ﬁ
if
¡¡ 
(
¡¡ 
result
¡¡ 
.
¡¡ 
Result
¡¡ 
.
¡¡ 
ResultObject
¡¡ *
.
¡¡* +
Success
¡¡+ 2
)
¡¡2 3
{
¬¬ 
returnValue
√√ 
[
√√ 
$num
√√ 
]
√√ 
.
√√ 
	IsSuccess
√√ (
=
√√) *
true
√√+ /
;
√√/ 0
return
ƒƒ 
Ok
ƒƒ 
(
ƒƒ 
returnValue
ƒƒ %
)
ƒƒ% &
;
ƒƒ& '
}
≈≈ 
else
∆∆ 
{
«« 
return
»» 

BadRequest
»» !
(
»»! "
result
»»" (
)
»»( )
;
»») *
}
…… 
}
   	
public
ÕÕ 
static
ÕÕ "
BoardSwimlanesOutput
ÕÕ *F
8GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput
ÕÕ+ c
(
ÕÕc d1
"GetBoardSwimLanesCommandResultItemÕÕd Ü
inputÕÕá å
)ÕÕå ç
{
ŒŒ 	
return
œœ 
new
œœ "
BoardSwimlanesOutput
œœ +
(
œœ+ ,
)
œœ, -
{
–– 
BoardId
—— 
=
—— 
input
—— 
.
——  
BoardId
——  '
,
——' (
Name
““ 
=
““ 
input
““ 
.
““ 
Name
““ !
,
““! "

SwimLaneId
”” 
=
”” 
input
”” "
.
””" #

SwimLaneId
””# -
}
÷÷ 
;
÷÷ 
}
◊◊ 	
}
ŸŸ 
}⁄⁄ ñL
DC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\CardController.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Controllers #
{ 
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
class 
CardController 
:  !
ControllerBase" 0
{ 
private 
readonly 
ICardService %
_cardService& 2
;2 3
public 
CardController 
( 
ICardService *
_service+ 3
)3 4
{ 	
_cardService 
= 
_service #
;# $
} 	
[## 	
Route##	 
(## 
$str## 
)## 
]## 
[$$ 	
HttpPost$$	 
]$$ 
public%% 
ActionResult%% 
<%% 
GetCardOutput%% )
>%%) *
Get%%+ .
(%%. /
CardGetInput%%/ ;
input%%< A
)%%A B
{&& 	
GetCardOutput'' 
returnValue'' %
=''& '
new''( +
GetCardOutput'', 9
(''9 :
)'': ;
;''; < 
GetCardDetailCommand))  
command))! (
=))) *
new))+ . 
GetCardDetailCommand))/ C
{** 
CardId++ 
=++ 
input++ 
.++ 
CardId++ %
},, 
;,, 
Task-- 
<-- &
GetCardDetailCommandResult-- +
>--+ ,
result--- 3
=--4 5
_cardService--6 B
.--B C
Get--C F
(--F G
command--G N
)--N O
;--O P
if// 
(// 
result// 
.// 
Result// 
.// 
ResultObject// *
.//* +
Success//+ 2
)//2 3
{00 
returnValue11 
.11 
BoardId11 #
=11$ %
result11& ,
.11, -
Result11- 3
.113 4
ResultObject114 @
.11@ A
Data11A E
.11E F
BoardId11F M
;11M N
returnValue22 
.22 

SwimLaneId22 &
=22' (
result22) /
.22/ 0
Result220 6
.226 7
ResultObject227 C
.22C D
Data22D H
.22H I

SwimLaneId22I S
;22S T
returnValue33 
.33 
CardId33 "
=33# $
result33% +
.33+ ,
Result33, 2
.332 3
ResultObject333 ?
.33? @
Data33@ D
.33D E
CardId33E K
;33K L
returnValue44 
.44 
Name44  
=44! "
result44# )
.44) *
Result44* 0
.440 1
ResultObject441 =
.44= >
Data44> B
.44B C
Name44C G
;44G H
returnValue55 
.55 
Description55 '
=55( )
result55* 0
.550 1
Result551 7
.557 8
ResultObject558 D
.55D E
Data55E I
.55I J
Description55J U
;55U V
returnValue66 
.66 
Position66 $
=66% &
result66' -
.66- .
Result66. 4
.664 5
ResultObject665 A
.66A B
Data66B F
.66F G
Position66G O
;66O P
return88 
Ok88 
(88 
returnValue88 %
)88% &
;88& '
}99 
else:: 
{;; 
return<< 

BadRequest<< !
(<<! "
returnValue<<" -
)<<- .
;<<. /
}== 
}>> 	
[GG 	
RouteGG	 
(GG 
$strGG 
)GG 
]GG 
[HH 	
	HttpPatchHH	 
]HH 
publicII 
ActionResultII 
<II #
UpdateCardCommandResultII 3
>II3 4
UpdateII5 ;
(II; <
CardUpdateInputII< K
inputIIL Q
)IIQ R
{JJ 	
UpdateCardCommandKK 
commandKK %
=KK& '
newKK( +
UpdateCardCommandKK, =
{LL 
CardIdMM 
=MM 
inputMM 
.MM 
CardIdMM %
,MM% &
NameNN 
=NN 
inputNN 
.NN 
NameNN !
,NN! "
DescriptionOO 
=OO 
inputOO #
.OO# $
DescriptionOO$ /
}PP 
;PP 
TaskQQ 
<QQ #
UpdateCardCommandResultQQ (
>QQ( )
resultQQ* 0
=QQ1 2
_cardServiceQQ3 ?
.QQ? @
UpdateQQ@ F
(QQF G
commandQQG N
)QQN O
;QQO P
ifSS 
(SS 
resultSS 
.SS 
ResultSS 
.SS 
ResultObjectSS *
.SS* +
SuccessSS+ 2
)SS2 3
{TT 
returnUU 
OkUU 
(UU 
resultUU  
)UU  !
;UU! "
}VV 
elseWW 
{XX 
returnYY 

BadRequestYY !
(YY! "
resultYY" (
)YY( )
;YY) *
}ZZ 
}[[ 	
[bb 	
HttpGetbb	 
(bb 
$strbb .
)bb. /
]bb/ 0
publiccc 
ActionResultcc 
<cc *
GetAttachmentListCommandResultcc :
>cc: ;
GetAttachmentListcc< M
(ccM N
stringccN T
cardIdccU [
)cc[ \
{dd 	$
GetAttachmentListCommandee $
commandee% ,
=ee- .
newee/ 2$
GetAttachmentListCommandee3 K
{ff 
CardIdgg 
=gg 
cardIdgg 
,gg  
}hh 
;hh 
Taskii 
<ii *
GetAttachmentListCommandResultii /
>ii/ 0
resultii1 7
=ii8 9
_cardServiceii: F
.iiF G
GetAttachmentListiiG X
(iiX Y
commandiiY `
)ii` a
;iia b
ifkk 
(kk 
resultkk 
.kk 
Resultkk 
.kk 
ResultObjectkk *
.kk* +
Successkk+ 2
)kk2 3
{ll 
returnmm 
Okmm 
(mm 
resultmm  
)mm  !
;mm! "
}nn 
elseoo 
{pp 
returnqq 

BadRequestqq !
(qq! "
resultqq" (
)qq( )
;qq) *
}rr 
}ss 	
[zz 	
Routezz	 
(zz 
$strzz 
)zz 
]zz 
[{{ 	
HttpPost{{	 
]{{ 
public|| 
ActionResult|| 
<|| !
MoveCardCommandResult|| 1
>||1 2
MoveCard||3 ;
(||; <
MoveCardCommand||< K
command||L S
)||S T
{}} 	
MoveCardCommand~~ 
_command~~ $
=~~% &
new~~' *
MoveCardCommand~~+ :
(~~: ;
command~~; B
.~~B C
CardId~~C I
,~~I J
command~~K R
.~~R S

SwimLaneId~~S ]
)~~] ^
;~~^ _
Task 
< !
MoveCardCommandResult &
>& '
result( .
=/ 0
_cardService1 =
.= >
MoveCard> F
(F G
_commandG O
)O P
;P Q
if
ÅÅ 
(
ÅÅ 
result
ÅÅ 
.
ÅÅ 
Result
ÅÅ 
.
ÅÅ 
ResultObject
ÅÅ *
.
ÅÅ* +
Success
ÅÅ+ 2
)
ÅÅ2 3
{
ÇÇ 
return
ÉÉ 
Ok
ÉÉ 
(
ÉÉ 
result
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
return
áá 

BadRequest
áá !
(
áá! "
result
áá" (
)
áá( )
;
áá) *
}
àà 
}
ââ 	
[
êê 	
Route
êê	 
(
êê 
$str
êê 
)
êê 
]
êê 
[
ëë 	
HttpPost
ëë	 
]
ëë 
public
íí 
ActionResult
íí 
<
íí %
CreateCardCommandResult
íí 3
>
íí3 4

CreateCard
íí5 ?
(
íí? @
CreateCardCommand
íí@ Q
command
ííR Y
)
ííY Z
{
ìì 	
command
îî 
.
îî 
CardId
îî 
=
îî 
Guid
îî !
.
îî! "
NewGuid
îî" )
(
îî) *
)
îî* +
.
îî+ ,
ToString
îî, 4
(
îî4 5
)
îî5 6
;
îî6 7
Task
ïï 
<
ïï %
CreateCardCommandResult
ïï (
>
ïï( )
result
ïï* 0
=
ïï1 2
_cardService
ïï3 ?
.
ïï? @

CreateCard
ïï@ J
(
ïïJ K
command
ïïK R
)
ïïR S
;
ïïS T
if
óó 
(
óó 
result
óó 
.
óó 
Result
óó 
.
óó 
ResultObject
óó *
.
óó* +
Success
óó+ 2
)
óó2 3
{
òò 
return
ôô 
Ok
ôô 
(
ôô 
result
ôô  
)
ôô  !
;
ôô! "
}
öö 
else
õõ 
{
úú 
return
ùù 

BadRequest
ùù !
(
ùù! "
result
ùù" (
)
ùù( )
;
ùù) *
}
ûû 
}
üü 	
}
†† 
}°° ÑE
HC:\TFSProjects\KanbanApp\KanbanApp.Api\Controllers\SwimLaneController.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
SwimLaneController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ISwimLaneService )
_swimLaneService* :
;: ;
public 
SwimLaneController !
(! "
ISwimLaneService" 2
service3 :
): ;
{ 	
_swimLaneService 
= 
service &
;& '
} 	
[&& 	
HttpGet&&	 
(&& 
$str&& #
)&&# $
]&&$ %
public'' 
ActionResult'' 
<'' *
GetSwimlaneDetailCommandResult'' :
>'': ;
Get''< ?
(''? @
string''@ F

swimLaneId''G Q
)''Q R
{(( 	$
GetSwimlaneDetailCommand)) $
command))% ,
=))- .
new))/ 2$
GetSwimlaneDetailCommand))3 K
{** 

SwimLaneId++ 
=++ 

swimLaneId++ '
},, 
;,, 
Task-- 
<-- *
GetSwimlaneDetailCommandResult-- /
>--/ 0
result--1 7
=--8 9
_swimLaneService--: J
.--J K
Get--K N
(--N O
command--O V
)--V W
;--W X
if.. 
(.. 
result.. 
... 
Result.. 
... 
ResultObject.. *
...* +
Success..+ 2
)..2 3
{// 
return00 
Ok00 
(00 
result00  
)00  !
;00! "
}11 
else22 
{33 
return44 

BadRequest44 !
(44! "
result44" (
)44( )
;44) *
}55 
}66 	
[>> 	
Route>>	 
(>> 
$str>> 
)>> 
]>> 
[?? 	
HttpPost??	 
]?? 
public@@ 
ActionResult@@ 
<@@ '
CreateSwimlaneCommandResult@@ 7
>@@7 8
Add@@9 <
(@@< =
SwimLaneAddInput@@= M
input@@N S
)@@S T
{AA 	!
CreateSwimlaneCommandBB !
commandBB" )
=BB* +
newBB, /!
CreateSwimlaneCommandBB0 E
{CC 
BoardIdDD 
=DD 
inputDD 
.DD  
BoardIdDD  '
,DD' (

SwimLaneIdEE 
=EE 
inputEE "
.EE" #

SwimLaneIdEE# -
,EE- .
NameFF 
=FF 
inputFF 
.FF 
NameFF !
}GG 
;GG 
TaskHH 
<HH '
CreateSwimlaneCommandResultHH ,
>HH, -
resultHH. 4
=HH5 6
_swimLaneServiceHH7 G
.HHG H
AddHHH K
(HHK L
commandHHL S
)HHS T
;HHT U
ifII 
(II 
resultII 
.II 
ResultII 
.II 
ResultObjectII *
.II* +
SuccessII+ 2
)II2 3
{JJ 
returnKK 
OkKK 
(KK 
resultKK  
)KK  !
;KK! "
}LL 
elseMM 
{NN 
returnOO 

BadRequestOO !
(OO! "
resultOO" (
)OO( )
;OO) *
}PP 
}QQ 	
[ZZ 	
HttpGetZZ	 
(ZZ 
$strZZ :
)ZZ: ;
]ZZ; <
public[[ 
ActionResult[[ 
<[[ 
List[[  
<[[  !
SwimlaneCardsOutput[[! 4
>[[4 5
>[[5 6
GetSwimLaneCards[[7 G
([[G H
string[[H N
boardId[[O V
,[[V W
string[[X ^

swimLaneId[[_ i
)[[i j
{\\ 	#
GetSwimLaneCardsCommand]] #
command]]$ +
=]], -
new]]. 1#
GetSwimLaneCardsCommand]]2 I
(]]I J
boardId]]J Q
,]]Q R

swimLaneId]]S ]
)]]] ^
;]]^ _
Task^^ 
<^^ )
GetSwimLaneCardsCommandResult^^ .
>^^. /
result^^0 6
=^^7 8
_swimLaneService^^9 I
.^^I J
GetBoardSwimLanes^^J [
(^^[ \
command^^\ c
)^^c d
;^^d e
List__ 
<__ 
SwimlaneCardsOutput__ $
>__$ %
returnValue__& 1
=__2 3
new__4 7
List__8 <
<__< =
SwimlaneCardsOutput__= P
>__P Q
(__Q R
)__R S
;__S T
returnValueaa 
=aa 
resultaa  
.aa  !
Resultaa! '
.aa' (
ResultObjectaa( 4
.aa4 5
Dataaa5 9
.aa9 :

ConvertAllaa: D
<aaD E
SwimlaneCardsOutputaaE X
>aaX Y
(aaY Z
newaaZ ]
	Converteraa^ g
<aag h.
!GetSwimLaneCardsCommandResultItem	aah â
,
aaâ ä!
SwimlaneCardsOutput
aaã û
>
aaû ü
(
aaü †D
6GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput
aa† ÷
)
aa÷ ◊
)
aa◊ ÿ
;
aaÿ Ÿ
ifcc 
(cc 
resultcc 
.cc 
Resultcc 
.cc 
ResultObjectcc *
.cc* +
Successcc+ 2
)cc2 3
{dd 
returnff 
Okff 
(ff 
returnValueff %
)ff% &
;ff& '
}gg 
elsehh 
{ii 
returnjj 

BadRequestjj !
(jj! "
returnValuejj" -
)jj- .
;jj. /
}kk 
}ll 	
publicnn 
staticnn 
SwimlaneCardsOutputnn )B
6GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutputnn* `
(nn` a.
!GetSwimLaneCardsCommandResultItem	nna Ç
input
nnÉ à
)
nnà â
{oo 	
returnpp 
newpp 
SwimlaneCardsOutputpp *
(pp* +
)pp+ ,
{qq 
BoardIdrr 
=rr 
inputrr 
.rr  
BoardIdrr  '
,rr' (
Namess 
=ss 
inputss 
.ss 
Namess !
,ss! "

SwimLaneIdtt 
=tt 
inputtt "
.tt" #

SwimLaneIdtt# -
,tt- .
CardIduu 
=uu 
inputuu 
.uu 
CardIduu %
,uu% &
Descriptionvv 
=vv 
inputvv #
.vv# $
Descriptionvv$ /
}ww 
;ww 
}xx 	
[ 	
Route	 
( 
$str 
) 
] 
[
ÄÄ 	
	HttpPatch
ÄÄ	 
]
ÄÄ 
public
ÅÅ 
ActionResult
ÅÅ 
<
ÅÅ '
MoveSwimlaneCommandResult
ÅÅ 5
>
ÅÅ5 6
Move
ÅÅ7 ;
(
ÅÅ; <
SwimLaneMoveInput
ÅÅ< M
input
ÅÅN S
)
ÅÅS T
{
ÇÇ 	!
MoveSwimlaneCommand
ÉÉ 
command
ÉÉ  '
=
ÉÉ( )
new
ÉÉ* -!
MoveSwimlaneCommand
ÉÉ. A
{
ÑÑ 
BoardId
ÖÖ 
=
ÖÖ 
input
ÖÖ 
.
ÖÖ  
BoardId
ÖÖ  '
,
ÖÖ' (

SwimLaneId
ÜÜ 
=
ÜÜ 
input
ÜÜ "
.
ÜÜ" #

SwimLaneId
ÜÜ# -
,
ÜÜ- .
Name
áá 
=
áá 
input
áá 
.
áá 
Name
áá !
,
áá! "
Position
àà 
=
àà 
input
àà  
.
àà  !
Position
àà! )
}
ââ 
;
ââ 
Task
ää 
<
ää '
MoveSwimlaneCommandResult
ää *
>
ää* +
result
ää, 2
=
ää3 4
_swimLaneService
ää5 E
.
ääE F
Move
ääF J
(
ääJ K
command
ääK R
)
ääR S
;
ääS T
if
ãã 
(
ãã 
result
ãã 
.
ãã 
Result
ãã 
.
ãã 
ResultObject
ãã *
.
ãã* +
Success
ãã+ 2
)
ãã2 3
{
åå 
return
çç 
Ok
çç 
(
çç 
result
çç  
)
çç  !
;
çç! "
}
éé 
else
èè 
{
êê 
return
ëë 

BadRequest
ëë !
(
ëë! "
result
ëë" (
)
ëë( )
;
ëë) *
}
íí 
}
ìì 	
}
ññ 
}óó œ
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
} òü
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
ÄÄ 
BoardId
ÅÅ 
=
ÅÅ 
table
ÅÅ #
.
ÅÅ# $
Column
ÅÅ$ *
<
ÅÅ* +
string
ÅÅ+ 1
>
ÅÅ1 2
(
ÅÅ2 3
nullable
ÅÅ3 ;
:
ÅÅ; <
true
ÅÅ= A
)
ÅÅA B
,
ÅÅB C

SwimLaneId
ÇÇ 
=
ÇÇ  
table
ÇÇ! &
.
ÇÇ& '
Column
ÇÇ' -
<
ÇÇ- .
string
ÇÇ. 4
>
ÇÇ4 5
(
ÇÇ5 6
nullable
ÇÇ6 >
:
ÇÇ> ?
true
ÇÇ@ D
)
ÇÇD E
,
ÇÇE F
CardId
ÉÉ 
=
ÉÉ 
table
ÉÉ "
.
ÉÉ" #
Column
ÉÉ# )
<
ÉÉ) *
string
ÉÉ* 0
>
ÉÉ0 1
(
ÉÉ1 2
nullable
ÉÉ2 :
:
ÉÉ: ;
false
ÉÉ< A
)
ÉÉA B
,
ÉÉB C
Name
ÑÑ 
=
ÑÑ 
table
ÑÑ  
.
ÑÑ  !
Column
ÑÑ! '
<
ÑÑ' (
string
ÑÑ( .
>
ÑÑ. /
(
ÑÑ/ 0
nullable
ÑÑ0 8
:
ÑÑ8 9
true
ÑÑ: >
)
ÑÑ> ?
,
ÑÑ? @
Description
ÖÖ 
=
ÖÖ  !
table
ÖÖ" '
.
ÖÖ' (
Column
ÖÖ( .
<
ÖÖ. /
string
ÖÖ/ 5
>
ÖÖ5 6
(
ÖÖ6 7
nullable
ÖÖ7 ?
:
ÖÖ? @
true
ÖÖA E
)
ÖÖE F
,
ÖÖF G$
CardPriorityPriorityId
ÜÜ *
=
ÜÜ+ ,
table
ÜÜ- 2
.
ÜÜ2 3
Column
ÜÜ3 9
<
ÜÜ9 :
int
ÜÜ: =
>
ÜÜ= >
(
ÜÜ> ?
nullable
ÜÜ? G
:
ÜÜG H
true
ÜÜI M
)
ÜÜM N
,
ÜÜN O
TypeCardTypeId
áá "
=
áá# $
table
áá% *
.
áá* +
Column
áá+ 1
<
áá1 2
string
áá2 8
>
áá8 9
(
áá9 :
nullable
áá: B
:
ááB C
true
ááD H
)
ááH I
,
ááI J
CardPosition
àà  
=
àà! "
table
àà# (
.
àà( )
Column
àà) /
<
àà/ 0
int
àà0 3
>
àà3 4
(
àà4 5
nullable
àà5 =
:
àà= >
false
àà? D
)
ààD E
,
ààE F
CardWeightSizeId
ââ $
=
ââ% &
table
ââ' ,
.
ââ, -
Column
ââ- 3
<
ââ3 4
int
ââ4 7
>
ââ7 8
(
ââ8 9
nullable
ââ9 A
:
ââA B
true
ââC G
)
ââG H
,
ââH I
EstimateHours
ää !
=
ää" #
table
ää$ )
.
ää) *
Column
ää* 0
<
ää0 1
int
ää1 4
>
ää4 5
(
ää5 6
nullable
ää6 >
:
ää> ?
false
ää@ E
)
ääE F
}
ãã 
,
ãã 
constraints
åå 
:
åå 
table
åå "
=>
åå# %
{
çç 
table
éé 
.
éé 

PrimaryKey
éé $
(
éé$ %
$str
éé% /
,
éé/ 0
x
éé1 2
=>
éé3 5
x
éé6 7
.
éé7 8
CardId
éé8 >
)
éé> ?
;
éé? @
table
èè 
.
èè 

ForeignKey
èè $
(
èè$ %
name
êê 
:
êê 
$str
êê H
,
êêH I
column
ëë 
:
ëë 
x
ëë  !
=>
ëë" $
x
ëë% &
.
ëë& '$
CardPriorityPriorityId
ëë' =
,
ëë= >
principalTable
íí &
:
íí& '
$str
íí( 2
,
íí2 3
principalColumn
ìì '
:
ìì' (
$str
ìì) 5
,
ìì5 6
onDelete
îî  
:
îî  !
ReferentialAction
îî" 3
.
îî3 4
Restrict
îî4 <
)
îî< =
;
îî= >
table
ïï 
.
ïï 

ForeignKey
ïï $
(
ïï$ %
name
ññ 
:
ññ 
$str
ññ H
,
ññH I
column
óó 
:
óó 
x
óó  !
=>
óó" $
x
óó% &
.
óó& '
CardWeightSizeId
óó' 7
,
óó7 8
principalTable
òò &
:
òò& '
$str
òò( 8
,
òò8 9
principalColumn
ôô '
:
ôô' (
$str
ôô) ;
,
ôô; <
onDelete
öö  
:
öö  !
ReferentialAction
öö" 3
.
öö3 4
Restrict
öö4 <
)
öö< =
;
öö= >
table
õõ 
.
õõ 

ForeignKey
õõ $
(
õõ$ %
name
úú 
:
úú 
$str
úú =
,
úú= >
column
ùù 
:
ùù 
x
ùù  !
=>
ùù" $
x
ùù% &
.
ùù& '

SwimLaneId
ùù' 1
,
ùù1 2
principalTable
ûû &
:
ûû& '
$str
ûû( 3
,
ûû3 4
principalColumn
üü '
:
üü' (
$str
üü) 5
,
üü5 6
onDelete
††  
:
††  !
ReferentialAction
††" 3
.
††3 4
Restrict
††4 <
)
††< =
;
††= >
table
°° 
.
°° 

ForeignKey
°° $
(
°°$ %
name
¢¢ 
:
¢¢ 
$str
¢¢ A
,
¢¢A B
column
££ 
:
££ 
x
££  !
=>
££" $
x
££% &
.
££& '
TypeCardTypeId
££' 5
,
££5 6
principalTable
§§ &
:
§§& '
$str
§§( 3
,
§§3 4
principalColumn
•• '
:
••' (
$str
••) 5
,
••5 6
onDelete
¶¶  
:
¶¶  !
ReferentialAction
¶¶" 3
.
¶¶3 4
Restrict
¶¶4 <
)
¶¶< =
;
¶¶= >
}
ßß 
)
ßß 
;
ßß 
migrationBuilder
©© 
.
©© 
CreateTable
©© (
(
©©( )
name
™™ 
:
™™ 
$str
™™ '
,
™™' (
columns
´´ 
:
´´ 
table
´´ 
=>
´´ !
new
´´" %
{
¨¨ 
CardId
≠≠ 
=
≠≠ 
table
≠≠ "
.
≠≠" #
Column
≠≠# )
<
≠≠) *
string
≠≠* 0
>
≠≠0 1
(
≠≠1 2
nullable
≠≠2 :
:
≠≠: ;
true
≠≠< @
)
≠≠@ A
,
≠≠A B
CardAttachmentId
ÆÆ $
=
ÆÆ% &
table
ÆÆ' ,
.
ÆÆ, -
Column
ÆÆ- 3
<
ÆÆ3 4
string
ÆÆ4 :
>
ÆÆ: ;
(
ÆÆ; <
nullable
ÆÆ< D
:
ÆÆD E
false
ÆÆF K
)
ÆÆK L
,
ÆÆL M
AttachmentName
ØØ "
=
ØØ# $
table
ØØ% *
.
ØØ* +
Column
ØØ+ 1
<
ØØ1 2
string
ØØ2 8
>
ØØ8 9
(
ØØ9 :
nullable
ØØ: B
:
ØØB C
true
ØØD H
)
ØØH I
,
ØØI J$
AttachmentDownloadLink
∞∞ *
=
∞∞+ ,
table
∞∞- 2
.
∞∞2 3
Column
∞∞3 9
<
∞∞9 :
string
∞∞: @
>
∞∞@ A
(
∞∞A B
nullable
∞∞B J
:
∞∞J K
true
∞∞L P
)
∞∞P Q
}
±± 
,
±± 
constraints
≤≤ 
:
≤≤ 
table
≤≤ "
=>
≤≤# %
{
≥≥ 
table
¥¥ 
.
¥¥ 

PrimaryKey
¥¥ $
(
¥¥$ %
$str
¥¥% 9
,
¥¥9 :
x
¥¥; <
=>
¥¥= ?
x
¥¥@ A
.
¥¥A B
CardAttachmentId
¥¥B R
)
¥¥R S
;
¥¥S T
table
µµ 
.
µµ 

ForeignKey
µµ $
(
µµ$ %
name
∂∂ 
:
∂∂ 
$str
∂∂ ?
,
∂∂? @
column
∑∑ 
:
∑∑ 
x
∑∑  !
=>
∑∑" $
x
∑∑% &
.
∑∑& '
CardId
∑∑' -
,
∑∑- .
principalTable
∏∏ &
:
∏∏& '
$str
∏∏( /
,
∏∏/ 0
principalColumn
ππ '
:
ππ' (
$str
ππ) 1
,
ππ1 2
onDelete
∫∫  
:
∫∫  !
ReferentialAction
∫∫" 3
.
∫∫3 4
Restrict
∫∫4 <
)
∫∫< =
;
∫∫= >
}
ªª 
)
ªª 
;
ªª 
migrationBuilder
ΩΩ 
.
ΩΩ 
CreateTable
ΩΩ (
(
ΩΩ( )
name
ææ 
:
ææ 
$str
ææ  
,
ææ  !
columns
øø 
:
øø 
table
øø 
=>
øø !
new
øø" %
{
¿¿ 

CardTaskId
¡¡ 
=
¡¡  
table
¡¡! &
.
¡¡& '
Column
¡¡' -
<
¡¡- .
string
¡¡. 4
>
¡¡4 5
(
¡¡5 6
nullable
¡¡6 >
:
¡¡> ?
false
¡¡@ E
)
¡¡E F
,
¡¡F G
Text
¬¬ 
=
¬¬ 
table
¬¬  
.
¬¬  !
Column
¬¬! '
<
¬¬' (
string
¬¬( .
>
¬¬. /
(
¬¬/ 0
nullable
¬¬0 8
:
¬¬8 9
true
¬¬: >
)
¬¬> ?
,
¬¬? @
CardTaskState
√√ !
=
√√" #
table
√√$ )
.
√√) *
Column
√√* 0
<
√√0 1
int
√√1 4
>
√√4 5
(
√√5 6
nullable
√√6 >
:
√√> ?
false
√√@ E
)
√√E F
,
√√F G
DueDate
ƒƒ 
=
ƒƒ 
table
ƒƒ #
.
ƒƒ# $
Column
ƒƒ$ *
<
ƒƒ* +
DateTime
ƒƒ+ 3
>
ƒƒ3 4
(
ƒƒ4 5
nullable
ƒƒ5 =
:
ƒƒ= >
false
ƒƒ? D
)
ƒƒD E
,
ƒƒE F
Estimate
≈≈ 
=
≈≈ 
table
≈≈ $
.
≈≈$ %
Column
≈≈% +
<
≈≈+ ,
float
≈≈, 1
>
≈≈1 2
(
≈≈2 3
nullable
≈≈3 ;
:
≈≈; <
false
≈≈= B
)
≈≈B C
,
≈≈C D
CardId
∆∆ 
=
∆∆ 
table
∆∆ "
.
∆∆" #
Column
∆∆# )
<
∆∆) *
string
∆∆* 0
>
∆∆0 1
(
∆∆1 2
nullable
∆∆2 :
:
∆∆: ;
true
∆∆< @
)
∆∆@ A
}
«« 
,
«« 
constraints
»» 
:
»» 
table
»» "
=>
»»# %
{
…… 
table
   
.
   

PrimaryKey
   $
(
  $ %
$str
  % 2
,
  2 3
x
  4 5
=>
  6 8
x
  9 :
.
  : ;

CardTaskId
  ; E
)
  E F
;
  F G
table
ÀÀ 
.
ÀÀ 

ForeignKey
ÀÀ $
(
ÀÀ$ %
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ 8
,
ÃÃ8 9
column
ÕÕ 
:
ÕÕ 
x
ÕÕ  !
=>
ÕÕ" $
x
ÕÕ% &
.
ÕÕ& '
CardId
ÕÕ' -
,
ÕÕ- .
principalTable
ŒŒ &
:
ŒŒ& '
$str
ŒŒ( /
,
ŒŒ/ 0
principalColumn
œœ '
:
œœ' (
$str
œœ) 1
,
œœ1 2
onDelete
––  
:
––  !
ReferentialAction
––" 3
.
––3 4
Restrict
––4 <
)
––< =
;
––= >
}
—— 
)
—— 
;
—— 
migrationBuilder
”” 
.
”” 
CreateTable
”” (
(
””( )
name
‘‘ 
:
‘‘ 
$str
‘‘ 
,
‘‘ 
columns
’’ 
:
’’ 
table
’’ 
=>
’’ !
new
’’" %
{
÷÷ 
TagId
◊◊ 
=
◊◊ 
table
◊◊ !
.
◊◊! "
Column
◊◊" (
<
◊◊( )
string
◊◊) /
>
◊◊/ 0
(
◊◊0 1
nullable
◊◊1 9
:
◊◊9 :
false
◊◊; @
)
◊◊@ A
,
◊◊A B
Name
ÿÿ 
=
ÿÿ 
table
ÿÿ  
.
ÿÿ  !
Column
ÿÿ! '
<
ÿÿ' (
string
ÿÿ( .
>
ÿÿ. /
(
ÿÿ/ 0
nullable
ÿÿ0 8
:
ÿÿ8 9
true
ÿÿ: >
)
ÿÿ> ?
,
ÿÿ? @
CardId
ŸŸ 
=
ŸŸ 
table
ŸŸ "
.
ŸŸ" #
Column
ŸŸ# )
<
ŸŸ) *
string
ŸŸ* 0
>
ŸŸ0 1
(
ŸŸ1 2
nullable
ŸŸ2 :
:
ŸŸ: ;
true
ŸŸ< @
)
ŸŸ@ A
}
⁄⁄ 
,
⁄⁄ 
constraints
€€ 
:
€€ 
table
€€ "
=>
€€# %
{
‹‹ 
table
›› 
.
›› 

PrimaryKey
›› $
(
››$ %
$str
››% -
,
››- .
x
››/ 0
=>
››1 3
x
››4 5
.
››5 6
TagId
››6 ;
)
››; <
;
››< =
table
ﬁﬁ 
.
ﬁﬁ 

ForeignKey
ﬁﬁ $
(
ﬁﬁ$ %
name
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 3
,
ﬂﬂ3 4
column
‡‡ 
:
‡‡ 
x
‡‡  !
=>
‡‡" $
x
‡‡% &
.
‡‡& '
CardId
‡‡' -
,
‡‡- .
principalTable
·· &
:
··& '
$str
··( /
,
··/ 0
principalColumn
‚‚ '
:
‚‚' (
$str
‚‚) 1
,
‚‚1 2
onDelete
„„  
:
„„  !
ReferentialAction
„„" 3
.
„„3 4
Restrict
„„4 <
)
„„< =
;
„„= >
}
‰‰ 
)
‰‰ 
;
‰‰ 
migrationBuilder
ÊÊ 
.
ÊÊ 
CreateTable
ÊÊ (
(
ÊÊ( )
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ 
,
ÁÁ 
columns
ËË 
:
ËË 
table
ËË 
=>
ËË !
new
ËË" %
{
ÈÈ 
UserId
ÍÍ 
=
ÍÍ 
table
ÍÍ "
.
ÍÍ" #
Column
ÍÍ# )
<
ÍÍ) *
string
ÍÍ* 0
>
ÍÍ0 1
(
ÍÍ1 2
nullable
ÍÍ2 :
:
ÍÍ: ;
false
ÍÍ< A
)
ÍÍA B
,
ÍÍB C
UserName
ÎÎ 
=
ÎÎ 
table
ÎÎ $
.
ÎÎ$ %
Column
ÎÎ% +
<
ÎÎ+ ,
string
ÎÎ, 2
>
ÎÎ2 3
(
ÎÎ3 4
nullable
ÎÎ4 <
:
ÎÎ< =
true
ÎÎ> B
)
ÎÎB C
,
ÎÎC D
EMail
ÏÏ 
=
ÏÏ 
table
ÏÏ !
.
ÏÏ! "
Column
ÏÏ" (
<
ÏÏ( )
string
ÏÏ) /
>
ÏÏ/ 0
(
ÏÏ0 1
nullable
ÏÏ1 9
:
ÏÏ9 :
true
ÏÏ; ?
)
ÏÏ? @
,
ÏÏ@ A
Name
ÌÌ 
=
ÌÌ 
table
ÌÌ  
.
ÌÌ  !
Column
ÌÌ! '
<
ÌÌ' (
string
ÌÌ( .
>
ÌÌ. /
(
ÌÌ/ 0
nullable
ÌÌ0 8
:
ÌÌ8 9
true
ÌÌ: >
)
ÌÌ> ?
,
ÌÌ? @
Surname
ÓÓ 
=
ÓÓ 
table
ÓÓ #
.
ÓÓ# $
Column
ÓÓ$ *
<
ÓÓ* +
string
ÓÓ+ 1
>
ÓÓ1 2
(
ÓÓ2 3
nullable
ÓÓ3 ;
:
ÓÓ; <
true
ÓÓ= A
)
ÓÓA B
,
ÓÓB C
ProfilePicture
ÔÔ "
=
ÔÔ# $
table
ÔÔ% *
.
ÔÔ* +
Column
ÔÔ+ 1
<
ÔÔ1 2
string
ÔÔ2 8
>
ÔÔ8 9
(
ÔÔ9 :
nullable
ÔÔ: B
:
ÔÔB C
true
ÔÔD H
)
ÔÔH I
,
ÔÔI J
CardId
 
=
 
table
 "
.
" #
Column
# )
<
) *
string
* 0
>
0 1
(
1 2
nullable
2 :
:
: ;
true
< @
)
@ A
,
A B

CardTaskId
ÒÒ 
=
ÒÒ  
table
ÒÒ! &
.
ÒÒ& '
Column
ÒÒ' -
<
ÒÒ- .
string
ÒÒ. 4
>
ÒÒ4 5
(
ÒÒ5 6
nullable
ÒÒ6 >
:
ÒÒ> ?
true
ÒÒ@ D
)
ÒÒD E
}
ÚÚ 
,
ÚÚ 
constraints
ÛÛ 
:
ÛÛ 
table
ÛÛ "
=>
ÛÛ# %
{
ÙÙ 
table
ıı 
.
ıı 

PrimaryKey
ıı $
(
ıı$ %
$str
ıı% /
,
ıı/ 0
x
ıı1 2
=>
ıı3 5
x
ıı6 7
.
ıı7 8
UserId
ıı8 >
)
ıı> ?
;
ıı? @
table
ˆˆ 
.
ˆˆ 

ForeignKey
ˆˆ $
(
ˆˆ$ %
name
˜˜ 
:
˜˜ 
$str
˜˜ 5
,
˜˜5 6
column
¯¯ 
:
¯¯ 
x
¯¯  !
=>
¯¯" $
x
¯¯% &
.
¯¯& '
CardId
¯¯' -
,
¯¯- .
principalTable
˘˘ &
:
˘˘& '
$str
˘˘( /
,
˘˘/ 0
principalColumn
˙˙ '
:
˙˙' (
$str
˙˙) 1
,
˙˙1 2
onDelete
˚˚  
:
˚˚  !
ReferentialAction
˚˚" 3
.
˚˚3 4
Restrict
˚˚4 <
)
˚˚< =
;
˚˚= >
table
¸¸ 
.
¸¸ 

ForeignKey
¸¸ $
(
¸¸$ %
name
˝˝ 
:
˝˝ 
$str
˝˝ <
,
˝˝< =
column
˛˛ 
:
˛˛ 
x
˛˛  !
=>
˛˛" $
x
˛˛% &
.
˛˛& '

CardTaskId
˛˛' 1
,
˛˛1 2
principalTable
ˇˇ &
:
ˇˇ& '
$str
ˇˇ( 2
,
ˇˇ2 3
principalColumn
ÄÄ '
:
ÄÄ' (
$str
ÄÄ) 5
,
ÄÄ5 6
onDelete
ÅÅ  
:
ÅÅ  !
ReferentialAction
ÅÅ" 3
.
ÅÅ3 4
Restrict
ÅÅ4 <
)
ÅÅ< =
;
ÅÅ= >
}
ÇÇ 
)
ÇÇ 
;
ÇÇ 
migrationBuilder
ÑÑ 
.
ÑÑ 
CreateIndex
ÑÑ (
(
ÑÑ( )
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ 1
,
ÖÖ1 2
table
ÜÜ 
:
ÜÜ 
$str
ÜÜ (
,
ÜÜ( )
column
áá 
:
áá 
$str
áá  
)
áá  !
;
áá! "
migrationBuilder
ââ 
.
ââ 
CreateIndex
ââ (
(
ââ( )
name
ää 
:
ää 
$str
ää 7
,
ää7 8
table
ãã 
:
ãã 
$str
ãã 
,
ãã 
column
åå 
:
åå 
$str
åå 0
)
åå0 1
;
åå1 2
migrationBuilder
éé 
.
éé 
CreateIndex
éé (
(
éé( )
name
èè 
:
èè 
$str
èè 1
,
èè1 2
table
êê 
:
êê 
$str
êê 
,
êê 
column
ëë 
:
ëë 
$str
ëë *
)
ëë* +
;
ëë+ ,
migrationBuilder
ìì 
.
ìì 
CreateIndex
ìì (
(
ìì( )
name
îî 
:
îî 
$str
îî +
,
îî+ ,
table
ïï 
:
ïï 
$str
ïï 
,
ïï 
column
ññ 
:
ññ 
$str
ññ $
)
ññ$ %
;
ññ% &
migrationBuilder
òò 
.
òò 
CreateIndex
òò (
(
òò( )
name
ôô 
:
ôô 
$str
ôô /
,
ôô/ 0
table
öö 
:
öö 
$str
öö 
,
öö 
column
õõ 
:
õõ 
$str
õõ (
)
õõ( )
;
õõ) *
migrationBuilder
ùù 
.
ùù 
CreateIndex
ùù (
(
ùù( )
name
ûû 
:
ûû 
$str
ûû *
,
ûû* +
table
üü 
:
üü 
$str
üü !
,
üü! "
column
†† 
:
†† 
$str
††  
)
††  !
;
††! "
migrationBuilder
¢¢ 
.
¢¢ 
CreateIndex
¢¢ (
(
¢¢( )
name
££ 
:
££ 
$str
££ +
,
££+ ,
table
§§ 
:
§§ 
$str
§§ !
,
§§! "
column
•• 
:
•• 
$str
•• !
)
••! "
;
••" #
migrationBuilder
ßß 
.
ßß 
CreateIndex
ßß (
(
ßß( )
name
®® 
:
®® 
$str
®® ,
,
®®, -
table
©© 
:
©© 
$str
©© "
,
©©" #
column
™™ 
:
™™ 
$str
™™ !
)
™™! "
;
™™" #
migrationBuilder
¨¨ 
.
¨¨ 
CreateIndex
¨¨ (
(
¨¨( )
name
≠≠ 
:
≠≠ 
$str
≠≠ >
,
≠≠> ?
table
ÆÆ 
:
ÆÆ 
$str
ÆÆ "
,
ÆÆ" #
column
ØØ 
:
ØØ 
$str
ØØ 3
)
ØØ3 4
;
ØØ4 5
migrationBuilder
±± 
.
±± 
CreateIndex
±± (
(
±±( )
name
≤≤ 
:
≤≤ 
$str
≤≤ %
,
≤≤% &
table
≥≥ 
:
≥≥ 
$str
≥≥ 
,
≥≥ 
column
¥¥ 
:
¥¥ 
$str
¥¥  
)
¥¥  !
;
¥¥! "
migrationBuilder
∂∂ 
.
∂∂ 
CreateIndex
∂∂ (
(
∂∂( )
name
∑∑ 
:
∑∑ 
$str
∑∑ '
,
∑∑' (
table
∏∏ 
:
∏∏ 
$str
∏∏ 
,
∏∏ 
column
ππ 
:
ππ 
$str
ππ  
)
ππ  !
;
ππ! "
migrationBuilder
ªª 
.
ªª 
CreateIndex
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº +
,
ºº+ ,
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ 
,
ΩΩ 
column
ææ 
:
ææ 
$str
ææ $
)
ææ$ %
;
ææ% &
}
øø 	
	protected
¡¡ 
override
¡¡ 
void
¡¡ 
Down
¡¡  $
(
¡¡$ %
MigrationBuilder
¡¡% 5
migrationBuilder
¡¡6 F
)
¡¡F G
{
¬¬ 	
migrationBuilder
√√ 
.
√√ 
	DropTable
√√ &
(
√√& '
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ '
)
ƒƒ' (
;
ƒƒ( )
migrationBuilder
∆∆ 
.
∆∆ 
	DropTable
∆∆ &
(
∆∆& '
name
«« 
:
«« 
$str
««  
)
««  !
;
««! "
migrationBuilder
…… 
.
…… 
	DropTable
…… &
(
……& '
name
   
:
   
$str
   
)
   
;
   
migrationBuilder
ÃÃ 
.
ÃÃ 
	DropTable
ÃÃ &
(
ÃÃ& '
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ 
)
ÕÕ 
;
ÕÕ 
migrationBuilder
œœ 
.
œœ 
	DropTable
œœ &
(
œœ& '
name
–– 
:
–– 
$str
––  
)
––  !
;
––! "
migrationBuilder
““ 
.
““ 
	DropTable
““ &
(
““& '
name
”” 
:
”” 
$str
”” 
)
”” 
;
”” 
migrationBuilder
’’ 
.
’’ 
	DropTable
’’ &
(
’’& '
name
÷÷ 
:
÷÷ 
$str
÷÷  
)
÷÷  !
;
÷÷! "
migrationBuilder
ÿÿ 
.
ÿÿ 
	DropTable
ÿÿ &
(
ÿÿ& '
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ &
)
ŸŸ& '
;
ŸŸ' (
migrationBuilder
€€ 
.
€€ 
	DropTable
€€ &
(
€€& '
name
‹‹ 
:
‹‹ 
$str
‹‹ !
)
‹‹! "
;
‹‹" #
migrationBuilder
ﬁﬁ 
.
ﬁﬁ 
	DropTable
ﬁﬁ &
(
ﬁﬁ& '
name
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ !
)
ﬂﬂ! "
;
ﬂﬂ" #
migrationBuilder
·· 
.
·· 
	DropTable
·· &
(
··& '
name
‚‚ 
:
‚‚ 
$str
‚‚ 
)
‚‚ 
;
‚‚  
migrationBuilder
‰‰ 
.
‰‰ 
	DropTable
‰‰ &
(
‰‰& '
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ '
)
ÂÂ' (
;
ÂÂ( )
}
ÊÊ 	
}
ÁÁ 
}ËË ”
EC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\BaseModels\BaseInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 

BaseModels )
{ 
public 

class 
	BaseInput 
{ 
} 
} ø
FC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\BaseModels\BaseOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 

BaseModels )
{ 
public 

class 

BaseOutput 
{ 
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
string 
> 
MessageList '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}		 
}

 é
KC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardAddInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardAddInput 
:  
	BaseInput! *
{		 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¬
NC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardDeleteInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardDeleteInput !
:" #
	BaseInput$ -
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 º
KC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardGetInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardGetInput 
:  
	BaseInput! *
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 ˘
NC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Input\BoardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Input& +
{ 
public 

class 
BoardUpdateInput !
:" #
	BaseInput$ -
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
} ì
MC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Output\BoardAddOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Output& ,
{ 
public 

class 
BoardAddOutput 
:  !

BaseOutput" ,
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
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
} 
} Ä
QC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Output\BoardGetListOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Output& ,
{ 
public 

class 
BoardGetListOutput #
:$ %

BaseOutput& 0
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
} ¯
MC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Output\BoardGetOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Output& ,
{ 
public 

class 
BoardGetOutput 
:  !

BaseOutput" ,
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
} ú
SC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Boards\Output\BoardSwimlanesOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Boards %
.% &
Output& ,
{ 
public 

class  
BoardSwimlanesOutput %
:& '

BaseOutput( 2
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
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
 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ë
IC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Cards\Input\CardGetInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Cards $
.$ %
Input% *
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
} á	
LC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Cards\Input\CardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Cards $
.$ %
Input% *
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
} û

KC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\Cards\Output\GetCardOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
Cards $
.$ %
Output% +
{ 
public 

class 
GetCardOutput 
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
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
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
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
} ÿ
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
}		 Û
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
} ¿	
UC:\TFSProjects\KanbanApp\KanbanApp.Api\Models\SwimLanes\Output\SwimlaneCardsOutput.cs
	namespace 	
	KanbanApp
 
. 
Api 
. 
Models 
. 
	SwimLanes (
.( )
Output) /
{ 
public 

class 
SwimlaneCardsOutput $
:% &

BaseOutput' 1
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
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
CardId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ê/
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
ToLower	AA{ Ç
(
AAÇ É
)
AAÉ Ñ
.
AAÑ Ö
Replace
AAÖ å
(
AAå ç
$str
AAç ê
,
AAê ë
$str
AAí ï
)
AAï ñ
}
AAñ ó
-
AAó ò
{
AAò ô
DateTime
AAô °
.
AA° ¢
UtcNow
AA¢ ®
:
AA® ©
yyyy-MM
AA© ∞
}
AA∞ ±
"
AA± ≤
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
}MM ÄN
1C:\TFSProjects\KanbanApp\KanbanApp.Api\Startup.cs
	namespace 	
	KanbanApp
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public   
IConfiguration   
Configuration   +
{  , -
get  . 1
;  1 2
}  3 4
public## 
void## 
ConfigureServices## %
(##% &
IServiceCollection##& 8
services##9 A
)##A B
{$$ 	
services%% 
.%% 
AddMvc%% 
(%% 
option%% "
=>%%# %
option%%& ,
.%%, -!
EnableEndpointRouting%%- B
=%%C D
false%%E J
)%%J K
.%%K L#
SetCompatibilityVersion%%L c
(%%c d 
CompatibilityVersion%%d x
.%%x y
Version_2_1	%%y Ñ
)
%%Ñ Ö
.
%%Ö Ü
AddJsonOptions
%%Ü î
(
%%î ï
options
%%ï ú
=>
%%ù ü
{&& 
options'' 
.'' !
JsonSerializerOptions'' -
.''- .
MaxDepth''. 6
=''7 8
$num''9 =
;''= >
}(( 
)(( 
;(( 
services** 
.** 
AddDbContext** !
<**! "
KanbanContext**" /
>**/ 0
(**0 1
option**1 7
=>**8 :
option**; A
.**A B
UseSqlServer**B N
(**N O
$str	**O ®
,
**® ©
b
**™ ´
=>
**¨ Æ
b
**Ø ∞
.
**∞ ± 
MigrationsAssembly
**± √
(
**√ ƒ
$str
**ƒ ”
)
**” ‘
)
**‘ ’
)
**’ ÷
;
**÷ ◊
services,, 
.,, 
	AddScoped,, 
<,, 
IRequestHandler,, .
<,,. /$
GetBoardSwimLanesCommand,,/ G
,,,G H*
GetBoardSwimLanesCommandResult,,I g
>,,g h
,,,h i,
GetBoardSwimLanesCommandHandler	,,j â
>
,,â ä
(
,,ä ã
)
,,ã å
;
,,å ç
services-- 
.-- 
	AddScoped-- 
<-- 
IRequestHandler-- .
<--. /#
GetSwimLaneCardsCommand--/ F
,--F G)
GetSwimLaneCardsCommandResult--H e
>--e f
,--f g+
GetSwimLaneCardsCommandHandler	--h Ü
>
--Ü á
(
--á à
)
--à â
;
--â ä
services.. 
... 
	AddScoped.. 
<.. 
IRequestHandler.. .
<... /
MoveCardCommand../ >
,..> ?!
MoveCardCommandResult..@ U
>..U V
,..V W"
MoveCardCommandHandler..X n
>..n o
(..o p
)..p q
;..q r
services// 
.// 
	AddScoped// 
<// 
IRequestHandler// .
<//. /
CreateCardCommand/// @
,//@ A#
CreateCardCommandResult//B Y
>//Y Z
,//Z [$
CreateCardCommandHandler//\ t
>//t u
(//u v
)//v w
;//w x
services00 
.00 
	AddScoped00 
<00 
IRequestHandler00 .
<00. /
CreateBoardCommand00/ A
,00A B$
CreateBoardCommandResult00C [
>00[ \
,00\ ]%
CreateBoardCommandHandler00^ w
>00w x
(00x y
)00y z
;00z {
services11 
.11 
	AddScoped11 
<11 
IRequestHandler11 .
<11. /!
GetBoardDetailCommand11/ D
,11D E'
GetBoardDetailCommandResult11F a
>11a b
,11b c)
GetBoardDetailCommandHandler	11d Ä
>
11Ä Å
(
11Å Ç
)
11Ç É
;
11É Ñ
services22 
.22 
	AddScoped22 
<22 
IRequestHandler22 .
<22. /
GetBoardListCommand22/ B
,22B C%
GetBoardListCommandResult22D ]
>22] ^
,22^ _&
GetBoardListCommandHandler22` z
>22z {
(22{ |
)22| }
;22} ~
services66 
.66 
	AddScoped66 
<66 
IRequestHandler66 .
<66. / 
GetCardDetailCommand66/ C
,66C D&
GetCardDetailCommandResult66E _
>66_ `
,66` a'
GetCardDetailCommandHandler66b }
>66} ~
(66~ 
)	66 Ä
;
66Ä Å
services88 
.88 

AddMediatR88 
(88  
typeof88  &
(88& '
Startup88' .
)88. /
)88/ 0
;880 1
services99 
.99 
	AddScoped99 
<99 
	IMediator99 (
,99( )
Mediator99* 2
>992 3
(993 4
)994 5
;995 6
services<< 
.<< 
AddTransient<< !
<<<! "
IBoardRepository<<" 2
,<<2 3
EfBoardRepository<<4 E
><<E F
(<<F G
)<<G H
;<<H I
services== 
.== 
AddTransient== !
<==! "
IBoardService==" /
,==/ 0
BoardService==1 =
>=== >
(==> ?
)==? @
;==@ A
services?? 
.?? 
AddTransient?? !
<??! "
ISwimLaneRepository??" 5
,??5 6 
EfSwimLaneRepository??7 K
>??K L
(??L M
)??M N
;??N O
services@@ 
.@@ 
AddTransient@@ !
<@@! "
ISwimLaneService@@" 2
,@@2 3
SwimLaneService@@4 C
>@@C D
(@@D E
)@@E F
;@@F G
servicesBB 
.BB 
AddTransientBB !
<BB! "
ICardRepositoryBB" 1
,BB1 2
EfCardRepositoryBB3 C
>BBC D
(BBD E
)BBE F
;BBF G
servicesCC 
.CC 
AddTransientCC !
<CC! "
ICardServiceCC" .
,CC. /
CardServiceCC0 ;
>CC; <
(CC< =
)CC= >
;CC> ?
servicesEE 
.EE 
AddCorsEE 
(EE 
cEE 
=>EE !
{FF 
cGG 
.GG 
	AddPolicyGG 
(GG 
$strGG )
,GG) *
optionsGG+ 2
=>GG3 5
optionsGG6 =
.GG= >
AllowAnyOriginGG> L
(GGL M
)GGM N
)GGN O
;GGO P
}HH 
)HH 
;HH 
servicesKK 
.KK 
AddSwaggerGenKK "
(KK" #
cKK# $
=>KK% '
{LL 
cMM 
.MM 

SwaggerDocMM 
(MM 
$strMM !
,MM! "
newMM# &
OpenApiInfoMM' 2
{NN 
VersionOO 
=OO 
$strOO "
,OO" #
TitlePP 
=PP 
$strPP (
,PP( )
DescriptionQQ 
=QQ  !
$strQQ" I
,QQI J
TermsOfServiceRR "
=RR# $
newRR% (
UriRR) ,
(RR, -
$strRR- H
)RRH I
,RRI J
ContactSS 
=SS 
newSS !
OpenApiContactSS" 0
{TT 
NameUU 
=UU 
$strUU 0
,UU0 1
EmailVV 
=VV 
$strVV  3
,VV3 4
UrlWW 
=WW 
newWW !
UriWW" %
(WW% &
$strWW& @
)WW@ A
,WWA B
}XX 
,XX 
LicenseYY 
=YY 
newYY !
OpenApiLicenseYY" 0
{ZZ 
Name[[ 
=[[ 
$str[[ /
,[[/ 0
Url\\ 
=\\ 
new\\ !
Uri\\" %
(\\% &
$str\\& C
)\\C D
,\\D E
}]] 
}^^ 
)^^ 
;^^ 
}__ 
)__ 
;__ 
}`` 	
publiccc 
voidcc 
	Configurecc 
(cc 
IApplicationBuildercc 1
appcc2 5
,cc5 6
IHostingEnvironmentcc7 J
envccK N
)ccN O
{dd 	
ifee 
(ee 
envee 
.ee 
IsDevelopmentee !
(ee! "
)ee" #
)ee# $
{ff 
appgg 
.gg %
UseDeveloperExceptionPagegg -
(gg- .
)gg. /
;gg/ 0
}hh 
elseii 
{jj 
appkk 
.kk 
UseHstskk 
(kk 
)kk 
;kk 
}ll 
appnn 
.nn 
UseCorsnn 
(nn 
buildernn 
=>nn  "
builderoo 
.oo 
AllowAnyOriginoo (
(oo( )
)oo) *
.oo* +
AllowAnyMethodoo+ 9
(oo9 :
)oo: ;
.oo; <
AllowAnyHeaderoo< J
(ooJ K
)ooK L
)pp 
;pp 
appss 
.ss 
UseMvcss 
(ss 
)ss 
;ss 
appvv 
.vv 

UseSwaggervv 
(vv 
)vv 
;vv 
appyy 
.yy 
UseSwaggerUIyy 
(yy 
cyy 
=>yy !
{zz 
c{{ 
.{{ 
SwaggerEndpoint{{ !
({{! "
$str{{" <
,{{< =
$str{{> M
){{M N
;{{N O
}|| 
)|| 
;|| 
app~~ 
.~~ 
UseStaticFiles~~ 
(~~ 
)~~  
;~~  !
app 
. 

UseRouting 
( 
) 
; 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ 