�
EC:\TFSProjects\KanbanApp\KanbanApp.Services\Abstract\IBoardService.cs
	namespace		 	
	KanbanApp		
 
.		 
Services		 
.		 
Abstract		 %
{

 
public 

	interface 
IBoardService "
{ 
ServiceResult 
< 
List 
< 
BoardGetListOutPut -
>- .
>. /
GetList0 7
(7 8

Expression8 B
<B C
FuncC G
<G H#
BoardGetListFilterInputH _
,_ `
boola e
>e f
>f g
filterh n
=o p
nullq u
)u v
;v w
ServiceResult 
< $
CreateBoardCommandResult .
>. /
Add0 3
(3 4
BoardAddInput4 A
inputB G
)G H
;H I
ServiceResult 
< 
BoardUpdateOutPut '
>' (
Update) /
(/ 0
BoardUpdateInput0 @
inputA F
)F G
;G H
ServiceResult 
< 
BoardDeleteOutPut '
>' (
Delete) /
(/ 0
string0 6
boardId7 >
)> ?
;? @
ServiceResult 
< 
BoardGetOutPut $
>$ %
Get& )
() *
string* 0
boardId1 8
)8 9
;9 :
ServiceResult 
< 
List 
< #
GetBoardSwimLanesOutPut 2
>2 3
>3 4
GetBoardSwimLanes5 F
(F G
stringG M
boardIdN U
)U V
;V W
} 
} �
DC:\TFSProjects\KanbanApp\KanbanApp.Services\Abstract\ICardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Abstract %
{ 
public 	
	interface
 
ICardService  
{ 
ServiceResult 
< 
List 
< 
CardGetListOutPut ,
>, -
>- .
GetList/ 6
(6 7

Expression7 A
<A B
FuncB F
<F G"
CardGetListFilterInputG ]
,] ^
bool_ c
>c d
>d e
filterf l
=m n
nullo s
)s t
;t u
ServiceResult 
< 
CardAddOutPut #
># $
Add% (
(( )
CardAddInput) 5
input6 ;
); <
;< =
ServiceResult 
< 
CardUpdateOutPut &
>& '
Update( .
(. /
CardUpdateInput/ >
input? D
)D E
;E F
ServiceResult 
< 
CardDeleteOutPut &
>& '
Delete( .
(. /
string/ 5
cardId6 <
)< =
;= >
ServiceResult 
< 
CardGetOutPut #
># $
Get% (
(( )
string) /
cardId0 6
)6 7
;7 8
ServiceResult 
< 
List 
< $
CardAttachmentsGetOutPut 3
>3 4
>4 5
GetCardAttachments6 H
(H I
stringI O
cardIdP V
)V W
;W X
} 
} �
HC:\TFSProjects\KanbanApp\KanbanApp.Services\Abstract\ISwimLaneService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Abstract %
{ 
public 	
	interface
 
ISwimLaneService $
{ 
ServiceResult 
< 
SwimLaneGetOutPut '
>' (
Get) ,
(, -
string- 3

swimLaneId4 >
)> ?
;? @
ServiceResult 
< 
List 
< !
SwimLaneGetListOutPut 0
>0 1
>1 2
GetList3 :
(: ;
); <
;< =
ServiceResult 
< 
SwimLaneAddOutPut '
>' (
Add) ,
(, -
SwimLaneAddInput- =
input> C
)C D
;D E
ServiceResult 
<  
SwimLaneUpdateOutPut *
>* +
Update, 2
(2 3
SwimLaneUpdateInput3 F
inputG L
)L M
;M N
ServiceResult 
<  
SwimLaneDeleteOutPut *
>* +
Delete, 2
(2 3
string3 9

swimLaneId: D
)D E
;E F
ServiceResult 
< "
GetSwimLaneCardsOutPut ,
>, -
GetSwimLaneCards. >
(> ?
string? E

swimLaneIdF P
)P Q
;Q R
}   
}!! ��
DC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\BoardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
BoardService 
: 
IBoardService  -
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public 
BoardService 
( 
IBoardRepository ,
boardRepository- <
)< =
{ 	
_boardRepository 
= 
boardRepository .
;. /
} 	
public 
ServiceResult 
< 
List !
<! "
BoardGetListOutPut" 4
>4 5
>5 6
GetList7 >
(> ?

Expression? I
<I J
FuncJ N
<N O#
BoardGetListFilterInputO f
,f g
boolh l
>l m
>m n
filtero u
=v w
nullx |
)| }
{ 	
ServiceResult 
< 
List 
< 
BoardGetListOutPut 1
>1 2
>2 3
result4 :
=; <
new= @
ServiceResultA N
<N O
ListO S
<S T
BoardGetListOutPutT f
>f g
>g h
(h i
)i j
{k l
Datam q
=r s
newt w
Listx |
<| }
BoardGetListOutPut	} �
>
� �
(
� �
)
� �
,
� �
Success
� �
=
� �
false
� �
,
� � 
ServiceMessageList
� �
=
� �
new
� �
List
� �
<
� �
ServiceMessage
� �
>
� �
(
� �
)
� �
}
� �
;
� �
try 
{ 
List 
< 
Board 
> 
	boardList %
=& '
_boardRepository( 8
.8 9
GetList9 @
(@ A
)A B
;B C
result   
.   
Data   
=   
	boardList   '
.  ' (
Select  ( .
(  . /
x  / 0
=>  1 3
new  4 7
BoardGetListOutPut  8 J
(  J K
)  K L
{!! 
BoardId## 
=## 
x## 
.##  
BoardId##  '
,##' (
Description$$ 
=$$  !
x$$" #
.$$# $
Description$$$ /
,$$/ 0
Name%% 
=%% 
x%% 
.%% 
Name%% !
}&& 
)&& 
.&& 
ToList&& 
(&& 
)&& 
;&& 
result** 
.** 
Success** 
=**  
true**! %
;**% &
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
result.. 
... 
ServiceMessageList.. )
...) *
Add..* -
(..- .
new... 1
ServiceMessage..2 @
(..@ A
)..A B
{// 
ServiceMessageType00 &
=00' (
eServiceMessageType00) <
.00< =
Error00= B
,00B C
UserFriendlyText11 $
=11% &
$str11' 9
,119 :
LogText22 
=22 
$str22 M
+22N O
ex22P R
.22R S
Message22S Z
,22Z [
SystemException33 #
=33$ %
ex33& (
}44 
)44 
;44 
}55 
return77 
result77 
;77 
}88 	
public:: 
ServiceResult:: 
<:: $
CreateBoardCommandResult:: 5
>::5 6
Add::7 :
(::: ;
BoardAddInput::; H
input::I N
)::N O
{;; 	
ServiceResult<< 
<<< $
CreateBoardCommandResult<< 2
><<2 3
result<<4 :
=<<; <
new<<= @
ServiceResult<<A N
<<<N O$
CreateBoardCommandResult<<O g
><<g h
(<<h i
)<<i j
;<<j k
result== 
.== 
Success== 
=== 
false== "
;==" #
result>> 
.>> 
ServiceMessageList>> %
=>>& '
new>>( +
List>>, 0
<>>0 1
ServiceMessage>>1 ?
>>>? @
(>>@ A
)>>A B
;>>B C
result?? 
.?? 
Data?? 
=?? 
new?? $
CreateBoardCommandResult?? 6
(??6 7
)??7 8
;??8 9
tryAA 
{BB 
BoardCC 
boardCC 
=CC 
_boardRepositoryCC .
.CC. /
AddCC/ 2
(CC2 3
newCC3 6
BoardCC7 <
(CC< =
)CC= >
{CC? @
BoardIdCCA H
=CCI J
inputCCK P
.CCP Q
BoardIdCCQ X
,CCX Y
NameCCZ ^
=CC_ `
inputCCa f
.CCf g
NameCCg k
,CCk l
OwnerIdCCm t
=CCu v
inputCCw |
.CC| }
OwnerId	CC} �
,
CC� �
Description
CC� �
=
CC� �
input
CC� �
.
CC� �
Description
CC� �
}
CC� �
)
CC� �
;
CC� �
resultDD 
.DD 
DataDD 
.DD 
BoardIdDD #
=DD$ %
boardDD& +
.DD+ ,
BoardIdDD, 3
;DD3 4
resultEE 
.EE 
DataEE 
.EE 
NameEE  
=EE! "
boardEE# (
.EE( )
NameEE) -
;EE- .
resultFF 
.FF 
DataFF 
.FF 
DescriptionFF '
=FF( )
boardFF* /
.FF/ 0
DescriptionFF0 ;
;FF; <
resultGG 
.GG 
DataGG 
.GG 
OwnerIdGG #
=GG$ %
boardGG& +
.GG+ ,
OwnerIdGG, 3
;GG3 4
resultII 
.II 
SuccessII 
=II  
trueII! %
;II% &
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 
resultMM 
.MM 
ServiceMessageListMM )
.MM) *
AddMM* -
(MM- .
newMM. 1
ServiceMessageMM2 @
(MM@ A
)MMA B
{NN 
ServiceMessageTypeOO &
=OO' (
eServiceMessageTypeOO) <
.OO< =
ErrorOO= B
,OOB C
UserFriendlyTextPP $
=PP% &
$strPP' 9
,PP9 :
LogTextQQ 
=QQ 
$strQQ I
+QQJ K
exQQL N
.QQN O
MessageQQO V
+QQW X
$strQQY k
+QQl m
exQQn p
.QQp q
InnerExceptionQQq 
}RR 
)RR 
;RR 
}SS 
returnUU 
resultUU 
;UU 
}VV 	
publicYY 
ServiceResultYY 
<YY 
BoardUpdateOutPutYY .
>YY. /
UpdateYY0 6
(YY6 7
BoardUpdateInputYY7 G
inputYYH M
)YYM N
{ZZ 	
ServiceResult[[ 
<[[ 
BoardUpdateOutPut[[ +
>[[+ ,
result[[- 3
=[[4 5
new[[6 9
ServiceResult[[: G
<[[G H
BoardUpdateOutPut[[H Y
>[[Y Z
([[Z [
)[[[ \
;[[\ ]
result\\ 
.\\ 
Success\\ 
=\\ 
false\\ "
;\\" #
result]] 
.]] 
Data]] 
=]] 
new]] 
BoardUpdateOutPut]] /
(]]/ 0
)]]0 1
;]]1 2
result^^ 
.^^ 
ServiceMessageList^^ %
=^^& '
new^^( +
List^^, 0
<^^0 1
ServiceMessage^^1 ?
>^^? @
(^^@ A
)^^A B
;^^B C
tryaa 
{bb 
_boardRepositorycc  
.cc  !
Updatecc! '
(cc' (
newcc( +
Boardcc, 1
(cc1 2
)cc2 3
{cc4 5
BoardIdcc6 =
=cc> ?
inputcc@ E
.ccE F
BoardIdccF M
,ccM N
NameccO S
=ccT U
inputccV [
.cc[ \
Namecc\ `
,cc` a
Descriptionccb m
=ccn o
inputccp u
.ccu v
Description	ccv �
,
cc� �
OwnerId
cc� �
=
cc� �
input
cc� �
.
cc� �
OwnerId
cc� �
}
cc� �
)
cc� �
;
cc� �
resultdd 
.dd 
Datadd 
=dd 
newdd !
BoardUpdateOutPutdd" 3
(dd3 4
)dd4 5
{dd6 7
Namedd8 <
=dd= >
inputdd? D
.ddD E
NameddE I
}ddJ K
;ddK L
resultee 
.ee 
Successee 
=ee  
trueee! %
;ee% &
}ff 
catchgg 
(gg 
	Exceptiongg 
exgg 
)gg  
{hh 
resultii 
.ii 
ServiceMessageListii )
.ii) *
Addii* -
(ii- .
newii. 1
ServiceMessageii2 @
(ii@ A
)iiA B
{jj 
ServiceMessageTypekk &
=kk' (
eServiceMessageTypekk) <
.kk< =
Errorkk= B
,kkB C
UserFriendlyTextll $
=ll% &
$strll' 9
,ll9 :
LogTextmm 
=mm 
$strmm L
+mmM N
exmmO Q
.mmQ R
MessagemmR Y
}nn 
)nn 
;nn 
}oo 
returnqq 
resultqq 
;qq 
}rr 	
publictt 
ServiceResulttt 
<tt 
BoardDeleteOutPuttt .
>tt. /
Deletett0 6
(tt6 7
stringtt7 =
boardIdtt> E
)ttE F
{uu 	
ServiceResultvv 
<vv 
BoardDeleteOutPutvv +
>vv+ ,
resultvv- 3
=vv4 5
newvv6 9
ServiceResultvv: G
<vvG H
BoardDeleteOutPutvvH Y
>vvY Z
(vvZ [
)vv[ \
;vv\ ]
resultww 
.ww 
Successww 
=ww 
falseww "
;ww" #
resultxx 
.xx 
ServiceMessageListxx %
=xx& '
newxx( +
Listxx, 0
<xx0 1
ServiceMessagexx1 ?
>xx? @
(xx@ A
)xxA B
;xxB C
tryzz 
{{{ 
_boardRepository||  
.||  !
Delete||! '
(||' (
new||( +
Board||, 1
{||2 3
BoardId||4 ;
=||< =
boardId||> E
}||F G
)||G H
;||H I
result}} 
.}} 
Success}} 
=}}  
true}}! %
;}}% &
}~~ 
catch 
( 
	Exception 
ex 
)  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� L
+
��M N
ex
��O Q
.
��Q R
Message
��R Y
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� 
BoardGetOutPut
�� +
>
��+ ,
Get
��- 0
(
��0 1
string
��1 7
boardId
��8 ?
)
��? @
{
�� 	
ServiceResult
�� 
<
�� 
BoardGetOutPut
�� (
>
��( )
result
��* 0
=
��1 2
new
��3 6
ServiceResult
��7 D
<
��D E
BoardGetOutPut
��E S
>
��S T
(
��T U
)
��U V
;
��V W
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� 
BoardGetOutPut
�� ,
(
��, -
)
��- .
;
��. /
result
�� 
.
�� 
Success
�� 
=
�� 
false
�� "
;
��" #
result
�� 
.
��  
ServiceMessageList
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
ServiceMessage
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
Board
�� 
board
�� 
=
�� 
_boardRepository
�� .
.
��. /
Get
��/ 2
(
��2 3
p
��3 4
=>
��5 7
p
��8 9
.
��9 :
BoardId
��: A
==
��B D
boardId
��E L
)
��L M
;
��M N
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� !
BoardGetOutPut
��" 0
(
��0 1
)
��1 2
{
��3 4
BoardId
��5 <
=
��= >
board
��? D
.
��D E
BoardId
��E L
,
��L M
Name
��N R
=
��S T
board
��U Z
.
��Z [
Name
��[ _
,
��_ `
Description
��a l
=
��m n
board
��o t
.
��t u
Description��u �
}��� �
;��� �
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� I
+
��J K
ex
��L N
.
��N O
Message
��O V
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� 
List
�� !
<
��! "%
GetBoardSwimLanesOutPut
��" 9
>
��9 :
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
�� 	
ServiceResult
�� 
<
�� 
List
�� 
<
�� %
GetBoardSwimLanesOutPut
�� 6
>
��6 7
>
��7 8
result
��9 ?
=
��@ A
new
��B E
ServiceResult
��F S
<
��S T
List
��T X
<
��X Y%
GetBoardSwimLanesOutPut
��Y p
>
��p q
>
��q r
(
��r s
)
��s t
;
��t u
result
�� 
.
�� 
Success
�� 
=
�� 
false
�� "
;
��" #
result
�� 
.
��  
ServiceMessageList
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
ServiceMessage
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� 
List
�� "
<
��" #%
GetBoardSwimLanesOutPut
��# :
>
��: ;
(
��; <
)
��< =
;
��= >
try
�� 
{
�� 
List
�� 
<
�� 
SwimLane
�� 
>
�� 
	boardList
�� (
=
��) *
_boardRepository
��+ ;
.
��; <
GetBoardSwimLanes
��< M
(
��M N
boardId
��N U
)
��U V
;
��V W
result
�� 
.
�� 
Data
�� 
=
�� 
	boardList
�� '
.
��' (
Select
��( .
(
��. /
x
��/ 0
=>
��1 3
new
��4 7%
GetBoardSwimLanesOutPut
��8 O
(
��O P
)
��P Q
{
�� 
BoardId
�� 
=
�� 
x
�� 
.
��  
BoardId
��  '
,
��' (
Name
�� 
=
�� 
x
�� 
.
�� 
Name
�� !
,
��! "
Position
�� 
=
�� 
x
��  
.
��  !
Position
��! )
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� W
+
��X Y
ex
��Z \
.
��\ ]
Message
��] d
,
��d e
SystemException
�� #
=
��$ %
ex
��& (
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� Ã
CC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\CardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
CardService 
: 
ICardService +
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public 
CardService 
( 
ICardRepository *
cardRepository+ 9
)9 :
{ 	
_cardRepository 
= 
cardRepository ,
;, -
} 	
public 
ServiceResult 
< 
CardAddOutPut *
>* +
Add, /
(/ 0
CardAddInput0 <
input= B
)B C
{ 	
ServiceResult 
< 
CardAddOutPut '
>' (
result) /
=0 1
new2 5
ServiceResult6 C
<C D
CardAddOutPutD Q
>Q R
(R S
)S T
;T U
result 
. 
Success 
= 
false "
;" #
result 
. 
ServiceMessageList %
=& '
new( +
List, 0
<0 1
ServiceMessage1 ?
>? @
(@ A
)A B
;B C
result 
. 
Data 
= 
new 
CardAddOutPut +
(+ ,
), -
;- .
try   
{!! 
Card"" 
card"" 
="" 
_cardRepository"" +
.""+ ,
Add"", /
(""/ 0
new""0 3
Card""4 8
(""8 9
)""9 :
{## 
CardId$$ 
=$$ 
Guid$$ !
.$$! "
NewGuid$$" )
($$) *
)$$* +
.$$+ ,
ToString$$, 4
($$4 5
)$$5 6
,$$6 7
BoardId%% 
=%% 
input%% #
.%%# $
BoardId%%$ +
,%%+ ,

SwimLaneId&& 
=&&  
input&&! &
.&&& '

SwimLaneId&&' 1
,&&1 2
CardPriority''  
=''! "
new''# &
Priority''' /
(''/ 0
)''0 1
{''2 3

PriorityId''4 >
=''? @
input''A F
.''F G

PriorityId''G Q
}''R S
,''S T
Description(( 
=((  !
input((" '
.((' (
Description((( 3
,((3 4
Type)) 
=)) 
new)) 
CardType)) '
())' (
)))( )
{))* +

CardTypeId)), 6
=))7 8
input))9 >
.))> ?

CardTypeId))? I
}))J K
,))K L
Name** 
=** 
input**  
.**  !
Name**! %
,**% &
CardWeightSize++ "
=++# $
new++% (
CardWeightSize++) 7
(++7 8
)++8 9
{++: ;
CardWeightSizeId++< L
=++M N
input++O T
.++T U
CardWeightSizeId++U e
}++f g
,++g h
EstimateHours,, !
=,," #
input,,$ )
.,,) *
EstimateHours,,* 7
}-- 
)-- 
;-- 
result.. 
... 
Data.. 
... 
CardId.. "
=..# $
card..% )
...) *
BoardId..* 1
;..1 2
result// 
.// 
Data// 
.// 
Name//  
=//! "
card//# '
.//' (
Name//( ,
;//, -
result22 
.22 
Success22 
=22  
true22! %
;22% &
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
result66 
.66 
Success66 
=66  
false66! &
;66& '
result77 
.77 
ServiceMessageList77 )
.77) *
Add77* -
(77- .
new77. 1
ServiceMessage772 @
(77@ A
)77A B
{88 
ServiceMessageType99 &
=99' (
eServiceMessageType99) <
.99< =
Error99= B
,99B C
UserFriendlyText:: $
=::% &
$str::' 9
,::9 :
LogText;; 
=;; 
$str;; H
+;;I J
ex;;K M
.;;M N
Message;;N U
+;;V W
$str;;X j
+;;k l
ex;;m o
.;;o p
InnerException;;p ~
}<< 
)<< 
;<< 
}== 
return?? 
result?? 
;?? 
}@@ 	
publicBB 
ServiceResultBB 
<BB 
CardDeleteOutPutBB -
>BB- .
DeleteBB/ 5
(BB5 6
stringBB6 <
cardIdBB= C
)BBC D
{CC 	
ServiceResultDD 
<DD 
CardDeleteOutPutDD *
>DD* +
resultDD, 2
=DD3 4
newDD5 8
ServiceResultDD9 F
<DDF G
CardDeleteOutPutDDG W
>DDW X
(DDX Y
)DDY Z
;DDZ [
resultEE 
.EE 
SuccessEE 
=EE 
falseEE "
;EE" #
resultFF 
.FF 
ServiceMessageListFF %
=FF& '
newFF( +
ListFF, 0
<FF0 1
ServiceMessageFF1 ?
>FF? @
(FF@ A
)FFA B
;FFB C
tryHH 
{II 
_cardRepositoryJJ 
.JJ  
DeleteJJ  &
(JJ& '
newJJ' *
CardJJ+ /
{JJ0 1
CardIdJJ2 8
=JJ9 :
cardIdJJ; A
}JJB C
)JJC D
;JJD E
resultKK 
.KK 
SuccessKK 
=KK  
trueKK! %
;KK% &
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
resultOO 
.OO 
ServiceMessageListOO )
.OO) *
AddOO* -
(OO- .
newOO. 1
ServiceMessageOO2 @
(OO@ A
)OOA B
{PP 
ServiceMessageTypeQQ &
=QQ' (
eServiceMessageTypeQQ) <
.QQ< =
ErrorQQ= B
,QQB C
UserFriendlyTextRR $
=RR% &
$strRR' 9
,RR9 :
LogTextSS 
=SS 
$strSS K
+SSL M
exSSN P
.SSP Q
MessageSSQ X
}TT 
)TT 
;TT 
}UU 
returnWW 
resultWW 
;WW 
}XX 	
publicZZ 
ServiceResultZZ 
<ZZ 
CardGetOutPutZZ *
>ZZ* +
GetZZ, /
(ZZ/ 0
stringZZ0 6
cardIdZZ7 =
)ZZ= >
{[[ 	
ServiceResult\\ 
<\\ 
CardGetOutPut\\ '
>\\' (
result\\) /
=\\0 1
new\\2 5
ServiceResult\\6 C
<\\C D
CardGetOutPut\\D Q
>\\Q R
(\\R S
)\\S T
;\\T U
result]] 
.]] 
Data]] 
=]] 
new]] 
CardGetOutPut]] +
(]]+ ,
)]], -
;]]- .
result^^ 
.^^ 
Success^^ 
=^^ 
false^^ "
;^^" #
result__ 
.__ 
ServiceMessageList__ %
=__& '
new__( +
List__, 0
<__0 1
ServiceMessage__1 ?
>__? @
(__@ A
)__A B
;__B C
try`` 
{aa 
Cardbb 
cardbb 
=bb 
_cardRepositorybb +
.bb+ ,
Getbb, /
(bb/ 0
pbb0 1
=>bb2 4
pbb5 6
.bb6 7
CardIdbb7 =
==bb> @
cardIdbbA G
)bbG H
;bbH I
resultcc 
.cc 
Datacc 
=cc 
newcc !
CardGetOutPutcc" /
(cc/ 0
)cc0 1
{cc2 3
CardIdcc4 :
=cc; <
cardcc= A
.ccA B
CardIdccB H
,ccH I
NameccJ N
=ccO P
cardccQ U
.ccU V
NameccV Z
}cc[ \
;cc\ ]
resultdd 
.dd 
Successdd 
=dd  
truedd! %
;dd% &
}ee 
catchff 
(ff 
	Exceptionff 
exff 
)ff  
{gg 
resulthh 
.hh 
ServiceMessageListhh )
.hh) *
Addhh* -
(hh- .
newhh. 1
ServiceMessagehh2 @
(hh@ A
)hhA B
{ii 
ServiceMessageTypejj &
=jj' (
eServiceMessageTypejj) <
.jj< =
Errorjj= B
,jjB C
UserFriendlyTextkk $
=kk% &
$strkk' 9
,kk9 :
LogTextll 
=ll 
$strll H
+llI J
exllK M
.llM N
MessagellN U
}mm 
)mm 
;mm 
}nn 
returnpp 
resultpp 
;pp 
}qq 	
publicss 
ServiceResultss 
<ss 
Listss !
<ss! "$
CardAttachmentsGetOutPutss" :
>ss: ;
>ss; <
GetCardAttachmentsss= O
(ssO P
stringssP V
cardIdssW ]
)ss] ^
{tt 	
ServiceResultuu 
<uu 
Listuu 
<uu $
CardAttachmentsGetOutPutuu 7
>uu7 8
>uu8 9
resultuu: @
=uuA B
newuuC F
ServiceResultuuG T
<uuT U
ListuuU Y
<uuY Z$
CardAttachmentsGetOutPutuuZ r
>uur s
>uus t
(uut u
)uuu v
;uuv w
resultvv 
.vv 
Successvv 
=vv 
falsevv "
;vv" #
resultww 
.ww 
ServiceMessageListww %
=ww& '
newww( +
Listww, 0
<ww0 1
ServiceMessageww1 ?
>ww? @
(ww@ A
)wwA B
;wwB C
resultxx 
.xx 
Dataxx 
=xx 
newxx 
Listxx "
<xx" #$
CardAttachmentsGetOutPutxx# ;
>xx; <
(xx< =
)xx= >
;xx> ?
tryzz 
{{{ 
List|| 
<|| 
CardAttachment|| #
>||# $
cardList||% -
=||. /
_cardRepository||0 ?
.||? @
GetCardAttachments||@ R
(||R S
cardId||S Y
)||Y Z
;||Z [
result}} 
.}} 
Data}} 
=}} 
cardList}} &
.}}& '
Select}}' -
(}}- .
x}}. /
=>}}0 2
new}}3 6$
CardAttachmentsGetOutPut}}7 O
(}}O P
)}}P Q
{~~ 
CardId
�� 
=
�� 
x
�� 
.
�� 
CardId
�� %
,
��% &
CardAttachmentId
�� $
=
��% &
x
��' (
.
��( )
CardAttachmentId
��) 9
,
��9 :
AttachmentName
�� "
=
��# $
x
��% &
.
��& '
AttachmentName
��' 5
,
��5 6$
AttachmentDownloadLink
�� *
=
��+ ,
x
��- .
.
��. /$
AttachmentDownloadLink
��/ E
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� W
+
��X Y
ex
��Z \
.
��\ ]
Message
��] d
,
��d e
SystemException
�� #
=
��$ %
ex
��& (
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� 
List
�� !
<
��! "
CardGetListOutPut
��" 3
>
��3 4
>
��4 5
GetList
��6 =
(
��= >

Expression
��> H
<
��H I
Func
��I M
<
��M N$
CardGetListFilterInput
��N d
,
��d e
bool
��f j
>
��j k
>
��k l
filter
��m s
=
��t u
null
��v z
)
��z {
{
�� 	
ServiceResult
�� 
<
�� 
List
�� 
<
�� 
CardGetListOutPut
�� 0
>
��0 1
>
��1 2
result
��3 9
=
��: ;
new
��< ?
ServiceResult
��@ M
<
��M N
List
��N R
<
��R S
CardGetListOutPut
��S d
>
��d e
>
��e f
(
��f g
)
��g h
{
��i j
Data
��k o
=
��p q
new
��r u
List
��v z
<
��z { 
CardGetListOutPut��{ �
>��� �
(��� �
)��� �
,��� �
Success��� �
=��� �
false��� �
,��� �"
ServiceMessageList��� �
=��� �
new��� �
List��� �
<��� �
ServiceMessage��� �
>��� �
(��� �
)��� �
}��� �
;��� �
try
�� 
{
�� 
List
�� 
<
�� 
Card
�� 
>
�� 
cardList
�� #
=
��$ %
_cardRepository
��& 5
.
��5 6
GetList
��6 =
(
��= >
)
��> ?
;
��? @
result
�� 
.
�� 
Data
�� 
=
�� 
cardList
�� &
.
��& '
Select
��' -
(
��- .
x
��. /
=>
��0 2
new
��3 6
CardGetListOutPut
��7 H
(
��H I
)
��I J
{
�� 
CardId
�� 
=
�� 
x
�� 
.
�� 
CardId
�� %
,
��% &
Description
�� 
=
��  !
x
��" #
.
��# $
Description
��$ /
,
��/ 0
Name
�� 
=
�� 
x
�� 
.
�� 
Name
�� !
,
��! "
CardType
�� 
=
�� 
x
��  
.
��  !
Type
��! %
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� L
+
��M N
ex
��O Q
.
��Q R
Message
��R Y
,
��Y Z
SystemException
�� #
=
��$ %
ex
��& (
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� 
CardUpdateOutPut
�� -
>
��- .
Update
��/ 5
(
��5 6
CardUpdateInput
��6 E
input
��F K
)
��K L
{
�� 	
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
}
�� 
}�� ��
GC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\SwimLaneService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
SwimLaneService  
:! "
ISwimLaneService# 3
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
public 
SwimLaneService 
( 
ISwimLaneRepository 2
swimLaneRepository3 E
)E F
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
;4 5
} 	
public 
ServiceResult 
< 
SwimLaneAddOutPut .
>. /
Add0 3
(3 4
SwimLaneAddInput4 D
inputE J
)J K
{ 	
ServiceResult 
< 
SwimLaneAddOutPut +
>+ ,
result- 3
=4 5
new6 9
ServiceResult: G
<G H
SwimLaneAddOutPutH Y
>Y Z
(Z [
)[ \
;\ ]
result 
. 
Success 
= 
false "
;" #
result 
. 
ServiceMessageList %
=& '
new( +
List, 0
<0 1
ServiceMessage1 ?
>? @
(@ A
)A B
;B C
result 
. 
Data 
= 
new 
SwimLaneAddOutPut /
(/ 0
)0 1
;1 2
try 
{   
SwimLane!! 
swimLane!! !
=!!" #
_swimLaneRepository!!$ 7
.!!7 8
Add!!8 ;
(!!; <
new!!< ?
SwimLane!!@ H
(!!H I
)!!I J
{!!K L
BoardId!!N U
=!!U V
input!!V [
.!![ \
BoardId!!\ c
,!!c d
Name!!e i
=!!i j
input!!j o
.!!o p
Name!!p t
,!!t u

SwimLaneId	!!v �
=
!!� �
input
!!� �
.
!!� �

SwimLaneId
!!� �
}
!!� �
)
!!� �
;
!!� �
result"" 
."" 
Data"" 
."" 
BoardId"" #
=""$ %
swimLane""& .
."". /
BoardId""/ 6
;""6 7
result## 
.## 
Data## 
.## 
Name##  
=##! "
swimLane### +
.##+ ,
Name##, 0
;##0 1
result$$ 
.$$ 
Data$$ 
.$$ 
Position$$ $
=$$% &
swimLane$$' /
.$$/ 0
Position$$0 8
;$$8 9
result%% 
.%% 
Data%% 
.%% 

SwimLaneId%% &
=%%' (
swimLane%%) 1
.%%1 2

SwimLaneId%%2 <
;%%< =
result&& 
.&& 
Success&& 
=&&  
true&&! %
;&&% &
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
result** 
.** 
ServiceMessageList** )
.**) *
Add*** -
(**- .
new**. 1
ServiceMessage**2 @
(**@ A
)**A B
{++ 
ServiceMessageType,, &
=,,' (
eServiceMessageType,,) <
.,,< =
Error,,= B
,,,B C
UserFriendlyText-- $
=--% &
$str--' 9
,--9 :
LogText.. 
=.. 
$str.. L
+..M N
ex..O Q
...Q R
Message..R Y
+..Z [
$str..\ n
+..o p
ex..q s
...s t
InnerException	..t �
}// 
)// 
;// 
}00 
return22 
result22 
;22 
}55 	
public99 
ServiceResult99 
<99  
SwimLaneDeleteOutPut99 1
>991 2
Delete994 :
(99: ;
string99; A

swimLaneId99B L
)99L M
{:: 	
ServiceResult<< 
<<<  
SwimLaneDeleteOutPut<< .
><<. /
result<<0 6
=<<7 8
new<<9 <
ServiceResult<<= J
<<<J K 
SwimLaneDeleteOutPut<<K _
><<_ `
(<<` a
)<<a b
;<<b c
result== 
.== 
Success== 
=== 
false== "
;==" #
result>> 
.>> 
ServiceMessageList>> %
=>>& '
new>>( +
List>>, 0
<>>0 1
ServiceMessage>>1 ?
>>>? @
(>>@ A
)>>A B
;>>B C
try@@ 
{AA 
_swimLaneRepositoryBB #
.BB# $
DeleteBB$ *
(BB* +
newBB+ .
SwimLaneBB/ 7
{BB8 9

SwimLaneIdBB: D
=BBE F

swimLaneIdBBG Q
}BBR S
)BBS T
;BBT U
resultCC 
.CC 
SuccessCC 
=CC  
trueCC! %
;CC% &
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
resultGG 
.GG 
ServiceMessageListGG )
.GG) *
AddGG* -
(GG- .
newGG. 1
ServiceMessageGG2 @
(GG@ A
)GGA B
{HH 
ServiceMessageTypeII &
=II' (
eServiceMessageTypeII) <
.II< =
ErrorII= B
,IIB C
UserFriendlyTextJJ $
=JJ% &
$strJJ' 9
,JJ9 :
LogTextKK 
=KK 
$strKK O
+KKP Q
exKKR T
.KKT U
MessageKKU \
}LL 
)LL 
;LL 
}MM 
returnOO 
resultOO 
;OO 
}PP 	
publicTT 
ServiceResultTT 
<TT 
SwimLaneGetOutPutTT .
>TT. /
GetTT0 3
(TT3 4
stringTT4 :

swimLaneIdTT; E
)TTE F
{UU 	
ServiceResultXX 
<XX 
SwimLaneGetOutPutXX +
>XX+ ,
resultXX- 3
=XX4 5
newXX6 9
ServiceResultXX: G
<XXG H
SwimLaneGetOutPutXXH Y
>XXY Z
(XXZ [
)XX[ \
;XX\ ]
resultYY 
.YY 
DataYY 
=YY 
newYY 
SwimLaneGetOutPutYY /
(YY/ 0
)YY0 1
;YY1 2
resultZZ 
.ZZ 
SuccessZZ 
=ZZ 
falseZZ "
;ZZ" #
result[[ 
.[[ 
ServiceMessageList[[ %
=[[& '
new[[( +
List[[, 0
<[[0 1
ServiceMessage[[1 ?
>[[? @
([[@ A
)[[A B
;[[B C
try\\ 
{]] 
SwimLane^^ 
swimLane^^ !
=^^" #
_swimLaneRepository^^$ 7
.^^7 8
Get^^8 ;
(^^; <
p^^< =
=>^^> @
p^^A B
.^^B C

SwimLaneId^^C M
==^^N P

swimLaneId^^Q [
)^^[ \
;^^\ ]
result__ 
.__ 
Data__ 
=__ 
new__ !
SwimLaneGetOutPut__" 3
(__3 4
)__4 5
{__6 7
BoardId__8 ?
=__@ A
swimLane__B J
.__J K
BoardId__K R
,__R S
Name__T X
=__Y Z
swimLane__[ c
.__c d
Name__d h
,__h i

SwimLaneId__j t
=__t u
swimLane__v ~
.__~ 

SwimLaneId	__ �
}
__� �
;
__� �
result`` 
.`` 
Success`` 
=``  
true``! %
;``% &
}aa 
catchbb 
(bb 
	Exceptionbb 
exbb 
)bb  
{cc 
resultdd 
.dd 
ServiceMessageListdd )
.dd) *
Adddd* -
(dd- .
newdd. 1
ServiceMessagedd2 @
(dd@ A
)ddA B
{ee 
ServiceMessageTypeff &
=ff' (
eServiceMessageTypeff) <
.ff< =
Errorff= B
,ffB C
UserFriendlyTextgg $
=gg% &
$strgg' 9
,gg9 :
LogTexthh 
=hh 
$strhh L
+hhM N
exhhO Q
.hhQ R
MessagehhR Y
}ii 
)ii 
;ii 
}jj 
returnll 
resultll 
;ll 
}nn 	
publicrr 
ServiceResultrr 
<rr 
Listrr !
<rr! "!
SwimLaneGetListOutPutrr" 7
>rr7 8
>rr8 9
GetListrr: A
(rrA B
)rrB C
{ss 	
ServiceResulttt 
<tt 
Listtt 
<tt !
SwimLaneGetListOutPuttt 4
>tt4 5
>tt5 6
resulttt7 =
=tt> ?
newtt@ C
ServiceResultttD Q
<ttQ R
ListttR V
<ttV W!
SwimLaneGetListOutPutttW l
>ttl m
>ttm n
(ttn o
)tto p
{ttq r
Datatts w
=ttx y
newttz }
List	tt~ �
<
tt� �#
SwimLaneGetListOutPut
tt� �
>
tt� �
(
tt� �
)
tt� �
,
tt� �
Success
tt� �
=
tt� �
false
tt� �
,
tt� � 
ServiceMessageList
tt� �
=
tt� �
new
tt� �
List
tt� �
<
tt� �
ServiceMessage
tt� �
>
tt� �
(
tt� �
)
tt� �
}
tt� �
;
tt� �
tryww 
{xx 
Listyy 
<yy 
SwimLaneyy 
>yy 
swimLaneListyy +
=yy, -
_swimLaneRepositoryyy. A
.yyA B
GetListyyB I
(yyI J
)yyJ K
;yyK L
resultzz 
.zz 
Datazz 
=zz 
swimLaneListzz *
.zz* +
Selectzz+ 1
(zz1 2
xzz2 3
=>zz4 6
newzz7 :!
SwimLaneGetListOutPutzz; P
(zzP Q
)zzQ R
{{{ 
BoardId}} 
=}} 
x}} 
.}}  
BoardId}}  '
,}}' (

SwimLaneId~~ 
=~~  
x~~! "
.~~" #

SwimLaneId~~# -
,~~- .
Name 
= 
x 
. 
Name !
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� P
+
��Q R
ex
��S U
.
��U V
Message
��V ]
,
��] ^
SystemException
�� #
=
��$ %
ex
��& (
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� $
GetSwimLaneCardsOutPut
�� 3
>
��3 4
GetSwimLaneCards
��6 F
(
��F G
string
��G M

SwimLaneId
��N X
)
��X Y
{
�� 	
ServiceResult
�� 
<
�� $
GetSwimLaneCardsOutPut
�� 0
>
��0 1
result
��2 8
=
��9 :
new
��; >
ServiceResult
��? L
<
��L M$
GetSwimLaneCardsOutPut
��M c
>
��c d
(
��d e
)
��e f
;
��f g
result
�� 
.
�� 
Success
�� 
=
�� 
false
�� "
;
��" #
result
�� 
.
��  
ServiceMessageList
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
ServiceMessage
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� $
GetSwimLaneCardsOutPut
�� 4
(
��4 5
)
��5 6
;
��6 7
try
�� 
{
�� 
List
�� 
<
�� 
Card
�� 
>
�� 
cardList
�� "
=
��# $!
_swimLaneRepository
��% 8
.
��8 9
GetSwimLaneCards
��9 I
(
��I J

SwimLaneId
��J T
)
��T U
;
��U V
result
�� 
.
�� 
Data
�� 
.
�� 
CardList
�� $
=
��% &
cardList
��' /
;
��/ 0
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� Y
+
��Z [
ex
��\ ^
.
��^ _
Message
��_ f
+
��g h
$str
��i {
+
��| }
ex��~ �
.��� �
InnerException��� �
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
ServiceResult
�� 
<
�� "
SwimLaneUpdateOutPut
�� 1
>
��1 2
Update
��3 9
(
��9 :!
SwimLaneUpdateInput
��: M
input
��N S
)
��S T
{
�� 	
ServiceResult
�� 
<
�� "
SwimLaneUpdateOutPut
�� .
>
��. /
result
��0 6
=
��7 8
new
��9 <
ServiceResult
��= J
<
��J K"
SwimLaneUpdateOutPut
��K _
>
��_ `
(
��` a
)
��a b
;
��b c
result
�� 
.
�� 
Success
�� 
=
�� 
false
�� "
;
��" #
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� "
SwimLaneUpdateOutPut
�� 2
(
��2 3
)
��3 4
;
��4 5
result
�� 
.
��  
ServiceMessageList
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
ServiceMessage
��1 ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� !
_swimLaneRepository
�� #
.
��# $
Update
��$ *
(
��* +
new
��+ .
SwimLane
��/ 7
(
��7 8
)
��8 9
{
��: ;

SwimLaneId
��< F
=
��G H
input
��I N
.
��N O

SwimLaneId
��O Y
}
��Z [
)
��[ \
;
��\ ]
result
�� 
.
�� 
Data
�� 
=
�� 
new
�� !"
SwimLaneUpdateOutPut
��" 6
(
��6 7
)
��7 8
{
��9 :

SwimLaneId
��; E
=
��F G
input
��H M
.
��M N

SwimLaneId
��N X
}
��Y Z
;
��Z [
result
�� 
.
�� 
Success
�� 
=
��  
true
��! %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
result
�� 
.
��  
ServiceMessageList
�� )
.
��) *
Add
��* -
(
��- .
new
��. 1
ServiceMessage
��2 @
(
��@ A
)
��A B
{
��  
ServiceMessageType
�� &
=
��' (!
eServiceMessageType
��) <
.
��< =
Error
��= B
,
��B C
UserFriendlyText
�� $
=
��% &
$str
��' 9
,
��9 :
LogText
�� 
=
�� 
$str
�� O
+
��P Q
ex
��R T
.
��T U
Message
��U \
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
}
�� 
}�� �
FC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Core\ServiceMessage.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Core! %
{ 
public 

class 
ServiceMessage 
{ 
public		 
eServiceMessageType		 "
ServiceMessageType		# 5
{		6 7
get		8 ;
;		; <
set		= @
;		@ A
}		B C
public

 
string

 
UserFriendlyText

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
string 
LogText 
{ 
get  #
;# $
set% (
;( )
}* +
public 
	Exception 
SystemException (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

Dictionary 
< 
string  
,  !
string! '
>' (
InputParameterList) ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

enum 
eServiceMessageType #
{ 
Error 
, 
Warning 
, 
Success 
} 
} �
EC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Core\ServiceResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Core! %
{ 
public 

class 
ServiceResult 
< 
T  
>  !
{ 
public		 
T		 
Data		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
List

 
<

 
ServiceMessage

 "
>

" #
ServiceMessageList

$ 6
{

7 8
get

9 <
;

< =
set

> A
;

A B
}

C D
public 
bool 
Success 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
ServiceMessage "
>" #
GetErrorMessageList$ 7
(7 8
)8 9
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Error_ d
)d e
;e f
} 	
public 
List 
< 
ServiceMessage "
>" #!
GetSuccessMessageList$ 9
(9 :
): ;
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Success_ f
)f g
;g h
} 	
public 
List 
< 
ServiceMessage "
>" #!
GetWarningMessageList$ 9
(9 :
): ;
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Warning_ f
)f g
;g h
} 	
} 
} �	
XC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\BoardServiceInput\BoardAddInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
BoardServiceInput' 8
{ 
public 

class 
BoardAddInput 
{		 
[

 	
Required

	 
]

 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
bC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\BoardServiceInput\BoardGetListFilterInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
BoardServiceInput' 8
{ 
public 
class	 #
BoardGetListFilterInput &
{ 
}

 
} �	
[C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\BoardServiceInput\BoardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
BoardServiceInput' 8
{ 
public 

class 
BoardUpdateInput !
{		 
[

 	
Required

	 
]

 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
VC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\CardServiceInput\CardAddInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
CardServiceInput' 7
{ 
public 

class 
CardAddInput 
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
Name 
{ 
get  
;  !
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 

PriorityId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
CardWeightSizeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

CardTypeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
EstimateHours  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
`C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\CardServiceInput\CardGetListFilterInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
CardServiceInput' 7
{ 
public 	
class
 "
CardGetListFilterInput &
{ 
}		 
}

 �
YC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\CardServiceInput\CardUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& '
CardServiceInput' 7
{ 
public 	
class
 
CardUpdateInput 
{ 
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
 
BoardId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 

PriorityId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

CardTypeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
EstimateHours  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
^C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\SwimLaneServiceInput\SwimLaneAddInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& ' 
SwimLaneServiceInput' ;
{ 
public 

class 
SwimLaneAddInput !
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		& )
;		) *
}		+ ,
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
# &
;

& '
}

( )
public 
string 

SwimLaneId  
{! "
get# &
;& '
set) ,
;, -
}. /
} 
} �
aC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Input\SwimLaneServiceInput\SwimLaneUpdateInput.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Input! &
.& ' 
SwimLaneServiceInput' ;
{ 
public 
class
 
SwimLaneUpdateInput #
{ 
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} �
[C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\BoardAddOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 	
class
 
BoardAddOutPut 
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
OwnerId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
^C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\BoardDeleteOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class 
BoardDeleteOutPut "
{ 
}		 
}

 �
_C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\BoardGetListOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class 
BoardGetListOutPut #
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
internal		% -
set		. 1
;		1 2
}		3 4
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
' (
internal

) 1
set

2 5
;

5 6
}

7 8
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
} 
} �
[C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\BoardGetOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class 
BoardGetOutPut 
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
OwnerId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
string 
Description !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
} 
} �
^C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\BoardUpdateOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class 
BoardUpdateOutPut "
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �
dC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\GetBoardSwimLanesOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class #
GetBoardSwimLanesOutPut (
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
internal		% -
set		. 1
;		1 2
}		3 4
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
int 
Position 
{ 
get !
;! "
internal# +
set, /
;/ 0
}1 2
} 
} �
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\BoardServiceOutput\GetListOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
BoardServiceOutput( :
{ 
public 

class 
GetListOutPut 
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		& )
;		) *
}		+ ,
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
* -
;

- .
}

/ 0
public 
string 
Name 
{ 
get  
;  !
set# &
;& '
}( )
} 
} �
YC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardAddOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 

class 
CardAddOutPut 
{ 
public		 
string		 
CardId		 
{		 
get		 "
;		" #
internal		$ ,
set		- 0
;		0 1
}		2 3
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
  !
internal

" *
set

+ .
;

. /
}

0 1
} 
} �	
dC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardAttachmentsGetOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 

class $
CardAttachmentsGetOutPut )
{ 
public		 
string		 
CardId		 
{		 
get		 "
;		" #
internal		$ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
CardAttachmentId

 &
{

' (
get

) ,
;

, -
internal

. 6
set

7 :
;

: ;
}

< =
public 
string 
AttachmentName $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public 
string "
AttachmentDownloadLink ,
{- .
get/ 2
;2 3
internal4 <
set= @
;@ A
}B C
} 
} �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardDeleteOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 
class
 
CardDeleteOutPut  
{ 
}		 
}

 �
]C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardGetListOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 

class 
CardGetListOutPut "
{		 
public

 
string

 
CardId

 
{

 
get

 "
;

" #
internal

$ ,
set

- 0
;

0 1
}

2 3
public 
string 
Description !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public 
string 
Name 
{ 
get  
;  !
internal" *
set+ .
;. /
}0 1
public 
CardType 
CardType  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
} 
} �
YC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardGetOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 

class 
CardGetOutPut 
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 

PriorityId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

CardTypeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
CardPosition 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
CardWeightSize !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
EstimateHours  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardUpdateOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (
CardServiceOutput( 9
{ 
public 	
class
 
CardUpdateOutPut  
{ 
}		 
}

 �
fC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\GetSwimLaneCardsOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 
class	 "
GetSwimLaneCardsOutPut %
{		 
public

 
List

 
<

 
Card

 
>

 
CardList

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
} 
} �
aC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\SwimLaneAddOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 

class 
SwimLaneAddOutPut "
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
internal		% -
set		. 1
;		1 2
}		3 4
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
  !
internal

" *
set

+ .
;

. /
}

0 1
public 
int 
Position 
{ 
get !
;! "
internal# +
set, /
;/ 0
}1 2
public 
string 

SwimLaneId  
{! "
get# &
;& '
internal( 0
set1 4
;4 5
}6 7
} 
} �
dC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\SwimLaneDeleteOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 
class
  
SwimLaneDeleteOutPut $
{ 
}		 
}

 �
eC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\SwimLaneGetListOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 

class !
SwimLaneGetListOutPut &
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		& )
;		) *
}		+ ,
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

) ,
;

, -
}

. /
public 
string 
Name 
{ 
get  
;  !
set# &
;& '
}( )
} 
} �
aC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\SwimLaneGetOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 

class 
SwimLaneGetOutPut "
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
dC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\SwimLaneUpdateOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 
class
  
SwimLaneUpdateOutPut $
{ 
public

 
string

 

SwimLaneId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\CreateBoard\CreateBoardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
CreateBoard, 7
{ 
public 

sealed 
class 
CreateBoardCommand *
:+ ,
IRequest- 5
<5 6$
CreateBoardCommandResult6 N
>N O
{		 
public

 
CreateBoardCommand

 !
(

! "
string

" (
ownerId

) 0
,

0 1
string

2 8
name

9 =
,

= >
string

> D
description

E P
)

P Q
{ 	
OwnerId 
= 
ownerId 
; 
Name 
= 
name 
; 
Description 
= 
description %
;% &
} 	
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\CreateBoard\CreateBoardCommandHandler.cs
	namespace		 	
	KanbanApp		
 
.		 
Services		 
.		 
UseCases		 %
.		% &
Board		& +
.		+ ,
CreateBoard		, 7
{

 
public 

sealed 
class %
CreateBoardCommandHandler 1
:2 3
IRequestHandler4 C
<C D
CreateBoardCommandD V
,V W$
CreateBoardCommandResultX p
>p q
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public %
CreateBoardCommandHandler (
(( )
IBoardRepository 
boardRepository +
)+ ,
{ 	
_boardRepository 
= 
boardRepository .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
boardRepositoryY h
)h i
)i j
;j k
} 	
public 
async 
Task 
< $
CreateBoardCommandResult 2
>2 3
Handle4 :
(: ;
CreateBoardCommand; M
requestN U
,U V
CancellationToken 
cancellationToken /
)/ 0
{ 	
return11 
new11 $
CreateBoardCommandResult11 /
(11/ 0
)110 1
;111 2
}33 	
}44 
}55 �
bC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\CreateBoard\CreateBoardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
CreateBoard, 7
{ 
public 	
class
 $
CreateBoardCommandResult (
{ 
public		 
string		 
BoardId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
OwnerId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �	
^C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\CreateBoard\CreateBoardValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
CreateBoard, 7
{ 
public 

class  
CreateBoardValidator %
:& '
AbstractValidator( 9
<9 :
CreateBoardCommand: L
>L M
{		 
public

  
CreateBoardValidator

 #
(

# $
)

$ %
{ 	
RuleFor 
( 
x 
=> 
x 
. 
OwnerId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
;. /
RuleFor 
( 
x 
=> 
x 
. 
Name 
)  
.  !
NotEmpty! )
() *
)* +
.+ ,
WithMessage, 7
(7 8
$str8 U
)U V
;V W
} 	
} 
} �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\DeleteBoard\DeleteBoardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
DeleteBoard, 7
{ 
public 

sealed 
class 
DeleteBoardCommand *
:+ ,
IRequest- 5
<5 6$
DeleteBoardCommandResult6 N
>N O
{		 
public

 
DeleteBoardCommand

 !
(

! "
string

" (
userId

) /
,

/ 0
string

1 7
name

8 <
)

< =
{ 	
UserId 
= 
userId 
; 
Name 
= 
name 
; 
} 	
public 
string 
UserId 
{ 
get "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
}" #
} 
} �
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\DeleteBoard\DeleteBoardCommandHandler.cs
	namespace		 	
	KanbanApp		
 
.		 
Services		 
.		 
UseCases		 %
.		% &
Board		& +
.		+ ,
DeleteBoard		, 7
{

 
public 

sealed 
class %
DeleteBoardCommandHandler 1
:2 3
IRequestHandler4 C
<C D
DeleteBoardCommandD V
,V W$
DeleteBoardCommandResultX p
>p q
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public %
DeleteBoardCommandHandler (
(( )
IBoardRepository 
boardRepository +
)+ ,
{ 	
_boardRepository 
= 
boardRepository .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
boardRepositoryY h
)h i
)i j
;j k
} 	
public 
async 
Task 
< $
DeleteBoardCommandResult 2
>2 3
Handle4 :
(: ;
DeleteBoardCommand; M
requestN U
,U V
CancellationToken 
cancellationToken /
)/ 0
{ 	
return00 
new00 $
DeleteBoardCommandResult00 /
(00/ 0
)000 1
;001 2
}22 	
}33 
}44 �
bC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\DeleteBoard\DeleteBoardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
DeleteBoard, 7
{ 
public 	
class $
DeleteBoardCommandResult )
{ 
}		 
}

 �
bC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardDetail\GetBoardDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardDetail, :
{ 
public		 

sealed		 
class		 !
GetBoardDetailCommand		 -
:		. /
IRequest		0 8
<		8 9'
GetBoardDetailCommandResult		9 T
>		T U
{

 
public !
GetBoardDetailCommand $
($ %
string% +
userId, 2
,2 3
string4 :
name; ?
)? @
{ 	
UserId 
= 
userId 
; 
Name 
= 
name 
; 
} 	
public 
string 
UserId 
{ 
get "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
}" #
} 
} �
iC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardDetail\GetBoardDetailCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardDetail, :
{ 
class 	(
GetBoardDetailCommandHandler
 &
{ 
}		 
}

 �
hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardDetail\GetBoardDetailCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardDetail, :
{ 
public 	
class '
GetBoardDetailCommandResult ,
{ 
}		 
} �
hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardSwimLanes\GetBoardSwimLanesCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardSwimLanes, =
{ 
public 
class $
GetBoardSwimLanesCommand )
{ 
}		 
}

 �
oC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardSwimLanes\GetBoardSwimLanesCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardSwimLanes, =
{ 
public 
class +
GetBoardSwimLanesCommandHandler 0
{ 
}		 
} �
nC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Board\GetBoardSwimLanes\GetBoardSwimLanesCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Board& +
.+ ,
GetBoardSwimLanes, =
{ 
public 
class *
GetBoardSwimLanesCommandResult /
{ 
}		 
}

 �
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommand.cs
	namespace		 	
	KanbanApp		
 
.		 
Services		 
.		 
UseCases		 %
.		% &
Cards		& +
.		+ ,

CreateCard		, 6
{

 
public 

sealed 
class 
CreateCardCommand )
:* +
IRequest, 4
<4 5#
CreateCardCommandResult5 L
>L M
{ 
} 
} �
aC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{		 
public

 

sealed

 
class

 $
CreateCardCommandHandler

 0
:

1 2
IRequestHandler

3 B
<

B C
CreateCardCommand

C T
,

T U#
CreateCardCommandResult

V m
>

m n
{ 
public 
Task 
< #
CreateCardCommandResult +
>+ ,
Handle- 3
(3 4
CreateCardCommand4 E
requestF M
,M N
CancellationTokenO `
cancellationTokena r
)r s
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} �
`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{ 
public 
class #
CreateCardCommandResult (
{ 
}		 
}

 �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{ 
public 
class 
CreateCardValidator $
{ 
}		 
}

 �
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\DeleteCard\DeleteCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

DeleteCard, 6
{ 
public 

class 
DeleteCardCommand "
{ 
}		 
}

 �
hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetAttachmentList\GetAttachmentListCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetAttachment, 9
{ 
class 	$
GetAttachmentListCommand
 "
{ 
}		 
}

 �
`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardDetail\GetCardDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardDetail, 9
{ 
public 
class
  
GetCardDetailCommand $
{ 
}		 
}

 �
^C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardTasks\GetCardTasksCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardTasks, 8
{ 
class 	
GetCardTasksCommand
 
{ 
}		 
}

 �
VC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\MoveCard\MoveCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
MoveCard, 4
{ 
public 	
class 
MoveCardCommand  
{ 
}		 
}

 �
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
public 	
class 
UpdateCardCommand "
{ 
}		 
}

 �
aC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
class 	$
UpdateCardCommandHandler
 "
{ 
}		 
}

 �
`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
class 	#
UpdateCardCommandResult
 !
{ 
}		 
}

 �
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
class 	
UpdateCardValidator
 
{ 
}		 
}

 �
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
CreateSwimlane0 >
{ 
public 
class	 !
CreateSwimlaneCommand $
{ 
}		 
}

 �
mC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
CreateSwimlane0 >
{ 
public 	
class (
CreateSwimlaneCommandHandler -
{ 
}		 
}

 �
lC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
CreateSwimlane0 >
{ 
public 
class '
CreateSwimlaneCommandResult ,
{ 
}		 
}

 �
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\DeleteSwimlane\DeleteSwimlaneCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
DeleteSwimlane0 >
{ 
public 	
class
 !
DeleteSwimlaneCommand %
{ 
}		 
}

 �
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetCards\GetCardsCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetCards0 8
{ 
public 	
class 
GetCardsCommand  
{ 
}		 
}

 �
lC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimlaneDetail\GetSwimlaneDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimlaneDetail0 A
{ 
public 
class	 $
GetSwimlaneDetailCommand '
{ 
}		 
}

 �
bC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\MoveSwimlane\MoveSwimlaneCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
MoveSwimlane0 <
{ 
public 	
class 
MoveSwimlaneCommand $
{ 
}		 
}

 