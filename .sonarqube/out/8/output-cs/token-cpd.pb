ù
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
{ 
Task 
< %
GetBoardListCommandResult &
>& '
GetList( /
(/ 0
GetBoardListCommand0 C
commandD K
)K L
;L M
Task 
< $
CreateBoardCommandResult %
>% &
Add' *
(* +
CreateBoardCommand+ =
command> E
)E F
;F G
Task 
< $
UpdateBoardCommandResult %
>% &
Update' -
(- .
UpdateBoardCommand. @
commandA H
)H I
;I J
Task 
< $
DeleteBoardCommandResult %
>% &
Delete' -
(- .
DeleteBoardCommand. @
commandA H
)H I
;I J
Task 
< '
GetBoardDetailCommandResult (
>( )
Get* -
(- .!
GetBoardDetailCommand. C
commandD K
)K L
;L M
Task 
< *
GetBoardSwimLanesCommandResult +
>+ ,
GetBoardSwimLanes- >
(> ?$
GetBoardSwimLanesCommand? W
commandX _
)_ `
;` a
} 
} ¥
DC:\TFSProjects\KanbanApp\KanbanApp.Services\Abstract\ICardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Abstract %
{ 
public 

	interface 
ICardService !
{ 
Task 
< #
UpdateCardCommandResult $
>$ %
Update& ,
(, -
UpdateCardCommand- >
command? F
)F G
;G H
Task 
< #
DeleteCardCommandResult $
>$ %
Delete& ,
(, -
DeleteCardCommand- >
command? F
)F G
;G H
Task 
< &
GetCardDetailCommandResult '
>' (
Get) ,
(, - 
GetCardDetailCommand- A
commandB I
)I J
;J K
ServiceResult 
< 
List 
< $
CardAttachmentsGetOutPut 3
>3 4
>4 5
GetCardAttachments6 H
(H I
stringI O
cardIdP V
)V W
;W X
Task 
< !
MoveCardCommandResult "
>" #
MoveCard$ ,
(, -
MoveCardCommand- <
command= D
)D E
;E F
Task 
< #
CreateCardCommandResult $
>$ %

CreateCard& 0
(0 1
CreateCardCommand1 B
commandC J
)J K
;K L
} 
} í	
HC:\TFSProjects\KanbanApp\KanbanApp.Services\Abstract\ISwimLaneService.cs
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
	interface 
ISwimLaneService %
{ 
Task 
< *
GetSwimlaneDetailCommandResult +
>+ ,
Get- 0
(0 1$
GetSwimlaneDetailCommand1 I
commandJ Q
)Q R
;R S
Task 
< '
CreateSwimlaneCommandResult (
>( )
Add* -
(- .!
CreateSwimlaneCommand. C
commandD K
)K L
;L M
Task 
< %
MoveSwimlaneCommandResult &
>& '
Move( ,
(, -
MoveSwimlaneCommand- @
commandA H
)H I
;I J
Task 
< )
GetSwimLaneCardsCommandResult *
>* +
GetBoardSwimLanes, =
(= >#
GetSwimLaneCardsCommand> U
commandV ]
)] ^
;^ _
} 
} Œ"
DC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\BoardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
BoardService 
: 
IBoardService  -
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
BoardService 
( 
IBoardRepository ,
boardRepository- <
,< =
	IMediator> G
mediatorH P
)P Q
{ 	
_boardRepository 
= 
boardRepository .
;. /
	_mediator 
= 
mediator  
;  !
} 	
public 
Task 
< %
GetBoardListCommandResult -
>- .
GetList/ 6
(6 7
GetBoardListCommand7 J
commandK R
)R S
{ 	
Task 
< %
GetBoardListCommandResult *
>* +
result, 2
;2 3
result 
= 
	_mediator 
. 
Send #
(# $
command$ +
)+ ,
;, -
return 
result 
; 
} 	
public!! 
Task!! 
<!! $
CreateBoardCommandResult!! ,
>!!, -
Add!!. 1
(!!1 2
CreateBoardCommand!!2 D
command!!E L
)!!L M
{"" 	
Task## 
<## $
CreateBoardCommandResult## )
>##) *
result##+ 1
;##1 2
result%% 
=%% 
	_mediator%% 
.%% 
Send%% #
(%%# $
command%%$ +
)%%+ ,
;%%, -
return'' 
result'' 
;'' 
}(( 	
public** 
Task** 
<** $
UpdateBoardCommandResult** ,
>**, -
Update**. 4
(**4 5
UpdateBoardCommand**5 G
command**H O
)**O P
{++ 	
Task-- 
<-- $
UpdateBoardCommandResult-- )
>--) *
result--+ 1
;--1 2
result// 
=// 
	_mediator// 
.// 
Send// #
(//# $
command//$ +
)//+ ,
;//, -
return11 
result11 
;11 
}22 	
public33 
Task33 
<33 $
DeleteBoardCommandResult33 ,
>33, -
Delete33. 4
(334 5
DeleteBoardCommand335 G
command33H O
)33O P
{44 	
Task55 
<55 $
DeleteBoardCommandResult55 )
>55) *
result55+ 1
;551 2
result77 
=77 
	_mediator77 
.77 
Send77 #
(77# $
command77$ +
)77+ ,
;77, -
return99 
result99 
;99 
}:: 	
public<< 
Task<< 
<<< '
GetBoardDetailCommandResult<< /
><</ 0
Get<<1 4
(<<4 5!
GetBoardDetailCommand<<5 J
command<<K R
)<<R S
{== 	
Task>> 
<>> '
GetBoardDetailCommandResult>> ,
>>>, -
result>>. 4
;>>4 5
result@@ 
=@@ 
	_mediator@@ 
.@@ 
Send@@ #
(@@# $
command@@$ +
)@@+ ,
;@@, -
returnBB 
resultBB 
;BB 
}CC 	
publicEE 
TaskEE 
<EE *
GetBoardSwimLanesCommandResultEE 2
>EE2 3
GetBoardSwimLanesEE4 E
(EEE F$
GetBoardSwimLanesCommandEEF ^
commandEE_ f
)EEf g
{FF 	
TaskGG 
<GG *
GetBoardSwimLanesCommandResultGG /
>GG/ 0
resultGG1 7
;GG7 8
resultII 
=II 
	_mediatorII 
.II 
SendII #
(II# $
commandII$ +
)II+ ,
;II, -
returnKK 
resultKK 
;KK 
}LL 	
}NN 
}OO Æ7
CC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\CardService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
CardService 
: 
ICardService +
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public 
CardService 
( 
ICardRepository *
cardRepository+ 9
,9 :
	IMediator; D
mediatorE M
)M N
{ 	
_cardRepository 
= 
cardRepository ,
;, -
	_mediator 
= 
mediator  
;  !
} 	
public!! 
Task!! 
<!! #
DeleteCardCommandResult!! +
>!!+ ,
Delete!!- 3
(!!3 4
DeleteCardCommand!!4 E
command!!F M
)!!M N
{"" 	
Task## 
<## #
DeleteCardCommandResult## (
>##( )
result##* 0
;##0 1
result%% 
=%% 
	_mediator%% 
.%% 
Send%% #
(%%# $
command%%$ +
)%%+ ,
;%%, -
return'' 
result'' 
;'' 
}(( 	
public** 
Task** 
<** &
GetCardDetailCommandResult** .
>**. /
Get**0 3
(**3 4 
GetCardDetailCommand**4 H
command**I P
)**P Q
{++ 	
Task,, 
<,, &
GetCardDetailCommandResult,, +
>,,+ ,
result,,- 3
;,,3 4
result.. 
=.. 
	_mediator.. 
... 
Send.. #
(..# $
command..$ +
)..+ ,
;.., -
return00 
result00 
;00 
}11 	
public33 
ServiceResult33 
<33 
List33 !
<33! "$
CardAttachmentsGetOutPut33" :
>33: ;
>33; <
GetCardAttachments33= O
(33O P
string33P V
cardId33W ]
)33] ^
{44 	
ServiceResult55 
<55 
List55 
<55 $
CardAttachmentsGetOutPut55 7
>557 8
>558 9
result55: @
=55A B
new55C F
ServiceResult55G T
<55T U
List55U Y
<55Y Z$
CardAttachmentsGetOutPut55Z r
>55r s
>55s t
(55t u
)55u v
;55v w
result66 
.66 
Success66 
=66 
false66 "
;66" #
result77 
.77 
ServiceMessageList77 %
=77& '
new77( +
List77, 0
<770 1
ServiceMessage771 ?
>77? @
(77@ A
)77A B
;77B C
result88 
.88 
Data88 
=88 
new88 
List88 "
<88" #$
CardAttachmentsGetOutPut88# ;
>88; <
(88< =
)88= >
;88> ?
try:: 
{;; 
List<< 
<<< 
CardAttachment<< #
><<# $
cardList<<% -
=<<. /
_cardRepository<<0 ?
.<<? @
GetCardAttachments<<@ R
(<<R S
cardId<<S Y
)<<Y Z
;<<Z [
result== 
.== 
Data== 
=== 
cardList== &
.==& '
Select==' -
(==- .
x==. /
=>==0 2
new==3 6$
CardAttachmentsGetOutPut==7 O
(==O P
)==P Q
{>> 
CardId@@ 
=@@ 
x@@ 
.@@ 
CardId@@ %
,@@% &
CardAttachmentIdAA $
=AA% &
xAA' (
.AA( )
CardAttachmentIdAA) 9
,AA9 :
AttachmentNameBB "
=BB# $
xBB% &
.BB& '
AttachmentNameBB' 5
,BB5 6"
AttachmentDownloadLinkCC *
=CC+ ,
xCC- .
.CC. /"
AttachmentDownloadLinkCC/ E
}EE 
)EE 
.EE 
ToListEE 
(EE 
)EE 
;EE 
resultGG 
.GG 
SuccessGG 
=GG  
trueGG! %
;GG% &
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
resultKK 
.KK 
ServiceMessageListKK )
.KK) *
AddKK* -
(KK- .
newKK. 1
ServiceMessageKK2 @
(KK@ A
)KKA B
{LL 
ServiceMessageTypeMM &
=MM' (
eServiceMessageTypeMM) <
.MM< =
ErrorMM= B
,MMB C
UserFriendlyTextNN $
=NN% &
$strNN' 9
,NN9 :
LogTextOO 
=OO 
$strOO W
+OOX Y
exOOZ \
.OO\ ]
MessageOO] d
,OOd e
SystemExceptionPP #
=PP$ %
exPP& (
}QQ 
)QQ 
;QQ 
}RR 
returnTT 
resultTT 
;TT 
}UU 	
publicXX 
TaskXX 
<XX #
UpdateCardCommandResultXX +
>XX+ ,
UpdateXX- 3
(XX3 4
UpdateCardCommandXX4 E
commandXXF M
)XXM N
{YY 	
TaskZZ 
<ZZ #
UpdateCardCommandResultZZ (
>ZZ( )
resultZZ* 0
;ZZ0 1
result\\ 
=\\ 
	_mediator\\ 
.\\ 
Send\\ #
(\\# $
command\\$ +
)\\+ ,
;\\, -
return^^ 
result^^ 
;^^ 
}__ 	
publicaa 
Taskaa 
<aa !
MoveCardCommandResultaa )
>aa) *
MoveCardaa+ 3
(aa3 4
MoveCardCommandaa4 C
commandaaD K
)aaK L
{bb 	
Taskcc 
<cc !
MoveCardCommandResultcc &
>cc& '
resultcc( .
;cc. /
resultee 
=ee 
	_mediatoree 
.ee 
Sendee #
(ee# $
commandee$ +
)ee+ ,
;ee, -
returngg 
resultgg 
;gg 
}hh 	
publicjj 
Taskjj 
<jj #
CreateCardCommandResultjj +
>jj+ ,

CreateCardjj- 7
(jj7 8
CreateCardCommandjj8 I
commandjjJ Q
)jjQ R
{kk 	
Taskll 
<ll #
CreateCardCommandResultll (
>ll( )
resultll* 0
;ll0 1
resultnn 
=nn 
	_mediatornn 
.nn 
Sendnn #
(nn# $
commandnn$ +
)nn+ ,
;nn, -
returnpp 
resultpp 
;pp 
}qq 	
}rr 
}ss Ä
GC:\TFSProjects\KanbanApp\KanbanApp.Services\Concrete\SwimLaneService.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
Concrete %
{ 
public 

class 
SwimLaneService  
:! "
ISwimLaneService# 3
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
SwimLaneService 
( 
ISwimLaneRepository 2
swimLaneRepository3 E
,E F
	IMediatorG P
mediatorQ Y
)Y Z
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
;4 5
	_mediator 
= 
mediator  
;  !
} 	
public 
Task 
< '
CreateSwimlaneCommandResult /
>/ 0
Add1 4
(4 5!
CreateSwimlaneCommand5 J
commandK R
)R S
{ 	
Task   
<   '
CreateSwimlaneCommandResult   ,
>  , -
result  . 4
;  4 5
result"" 
="" 
	_mediator"" 
."" 
Send"" #
(""# $
command""$ +
)""+ ,
;"", -
return$$ 
result$$ 
;$$ 
}&& 	
public'' 
Task'' 
<'' *
GetSwimlaneDetailCommandResult'' 2
>''2 3
Get''4 7
(''7 8$
GetSwimlaneDetailCommand''8 P
command''Q X
)''X Y
{(( 	
Task)) 
<)) *
GetSwimlaneDetailCommandResult)) /
>))/ 0
result))1 7
;))7 8
result++ 
=++ 
	_mediator++ 
.++ 
Send++ #
(++# $
command++$ +
)+++ ,
;++, -
return-- 
result-- 
;-- 
}// 	
public00 
Task00 
<00 )
GetSwimLaneCardsCommandResult00 1
>001 2
GetBoardSwimLanes003 D
(00D E#
GetSwimLaneCardsCommand00E \
command00] d
)00d e
{11 	
Task22 
<22 )
GetSwimLaneCardsCommandResult22 .
>22. /
result220 6
;226 7
result44 
=44 
	_mediator44 
.44 
Send44 #
(44# $
command44$ +
)44+ ,
;44, -
return66 
result66 
;66 
}77 	
public88 
Task88 
<88 %
MoveSwimlaneCommandResult88 -
>88- .
Move88/ 3
(883 4
MoveSwimlaneCommand884 G
command88H O
)88O P
{99 	
Task;; 
<;; %
MoveSwimlaneCommandResult;; *
>;;* +
result;;, 2
;;;2 3
result== 
=== 
	_mediator== 
.== 
Send== #
(==# $
command==$ +
)==+ ,
;==, -
return?? 
result?? 
;?? 
}AA 	
}BB 
}CC ¨
FC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Core\ServiceMessage.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Core! %
{ 
public 

class 
ServiceMessage 
{ 
public 
eServiceMessageType "
ServiceMessageType# 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public		 
string		 
UserFriendlyText		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
string

 
LogText
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
public 
	Exception 
SystemException (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

Dictionary 
< 
string  
,  !
string" (
>( )
InputParameterList* <
{= >
get? B
;B C
setD G
;G H
}I J
} 
public 

enum 
eServiceMessageType #
{ 
Error 
, 
Warning 
, 
Success 
} 
} Ë
EC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\Core\ServiceResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
Core! %
{ 
public 

class 
ServiceResult 
< 
T  
>  !
{ 
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
public 
List 
< 
ServiceMessage "
>" #
ServiceMessageList$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public		 
bool		 
Success		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
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
GetErrorMessageList

$ 7
(

7 8
)

8 9
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Error_ d
)d e
;e f
} 	
public 
List 
< 
ServiceMessage "
>" #!
GetSuccessMessageList$ 9
(9 :
): ;
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Success_ f
)f g
;g h
} 	
public 
List 
< 
ServiceMessage "
>" #!
GetWarningMessageList$ 9
(9 :
): ;
{ 	
return 
ServiceMessageList %
.% &
FindAll& -
(- .
x. /
=>0 2
x3 4
.4 5
ServiceMessageType5 G
==H J
eServiceMessageTypeK ^
.^ _
Warning_ f
)f g
;g h
} 	
} 
} è	
dC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\CardServiceOutput\CardAttachmentsGetOutPut.cs
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
CardServiceOutput( 9
{ 
public 

class $
CardAttachmentsGetOutPut )
{ 
public 
string 
CardId 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
string 
CardAttachmentId &
{' (
get) ,
;, -
internal. 6
set7 :
;: ;
}< =
public 
string 
AttachmentName $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public 
string "
AttachmentDownloadLink ,
{- .
get/ 2
;2 3
internal4 <
set= @
;@ A
}B C
}		 
}

 ˚
fC:\TFSProjects\KanbanApp\KanbanApp.Services\DTO\OutPut\SwimLaneServiceOutput\GetSwimLaneCardsOutPut.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
DTO  
.  !
OutPut! '
.' (!
SwimLaneServiceOutput( =
{ 
public 

class "
GetSwimLaneCardsOutPut '
{ 
public 
List 
< 
Card 
> 
CardList "
{# $
get% (
;( )
set* -
;- .
}/ 0
}

 
} “
TC:\TFSProjects\KanbanApp\KanbanApp.Services\Exceptions\ServiceValidationException.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 

Exceptions '
{ 
public 
class &
ServiceValidationException +
:+ ,
	Exception, 5
{ 
public		 &
ServiceValidationException		 )
(		) *
string		* 0
message		1 8
)		8 9
:		: ;
base		< @
(		@ A
message		A H
)		H I
{

 	
} 	
public &
ServiceValidationException )
() *
string* 0
message1 8
,8 9
	Exception: C
innerExceptionD R
)R S
:T U
baseV Z
(Z [
message[ b
,b c
innerExceptiond r
)r s
{ 	
} 	
} 
} “
TC:\TFSProjects\KanbanApp\KanbanApp.Services\PipelineBehaviors\ValidationBehaviour.cs
	namespace		 	
	KanbanApp		
 
.		 
Services		 
.		 
PipelineBehaviors		 .
{

 
public 

class 
ValidationBehaviour $
<$ %
TRequest% -
,- .
	TResponse/ 8
>8 9
:: ;
IPipelineBehavior< M
<M N
TRequestN V
,V W
	TResponseX a
>a b
wherec h
TRequesti q
:r s
IRequestt |
<| }
	TResponse	} Ü
>
Ü á
{ 
private 
readonly 
IEnumerable $
<$ %

IValidator% /
</ 0
TRequest0 8
>8 9
>9 :
_validators; F
;F G
public 
ValidationBehaviour "
(" #
IEnumerable# .
<. /

IValidator/ 9
<9 :
TRequest: B
>B C
>C D

validatorsE O
)O P
{ 	
_validators 
= 

validators $
;$ %
} 	
public 
Task 
< 
	TResponse 
> 
Handle  &
(& '
TRequest' /
request0 7
,7 8
CancellationToken9 J
cancellationTokenK \
,\ ]"
RequestHandlerDelegate^ t
<t u
	TResponseu ~
>~ 
next
Ä Ñ
)
Ñ Ö
{ 	
var 
validationFailures "
=# $
_validators% 0
. 
Select 
( 
	validator 
=>  
	validator! *
.* +
Validate+ 3
(3 4
request4 ;
); <
)< =
. 

SelectMany 
( 
validationResult (
=>) +
validationResult, <
.< =
Errors= C
)C D
. 
Where 
( 
validationFailure $
=>% '
validationFailure( 9
!=: <
null= A
)A B
. 
ToList 
( 
) 
; 
if 
( 
validationFailures "
." #
Any# &
(& '
)' (
)( )
{ 
var 
error 
= 
string "
." #
Join# '
(' (
$str( .
,. /
validationFailures0 B
)B C
;C D
throw 
new &
ServiceValidationException 4
(4 5
error5 :
): ;
;; <
} 
return   
next   
(   
)   
;   
}!! 	
}"" 
}## ©
kC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Attachment\CreateAttachment\CreateAttachmentCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &

Attachment& 0
.0 1
CreateAttachment1 A
{		 
public

 

class

 #
CreateAttachmentCommand

 (
:

) *
IRequest

+ 3
<

3 4)
CreateAttachmentCommandResult

4 Q
>

Q R
{ 
} 
} ¯
rC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Attachment\CreateAttachment\CreateAttachmentCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &

Attachment

& 0
.

0 1
CreateAttachment

1 A
{ 
public 

class *
CreateAttachmentCommandHandler /
:0 1
IRequestHandler2 A
<A B#
CreateAttachmentCommandB Y
,Y Z)
CreateAttachmentCommandResult[ x
>x y
{ 
public *
CreateAttachmentCommandHandler -
(- .
). /
{ 	
} 	
public 
async 
Task 
< )
CreateAttachmentCommandResult 7
>7 8
Handle9 ?
(? @#
CreateAttachmentCommand@ W
commandX _
,_ `
CancellationTokena r
cancellationToken	s Ñ
)
Ñ Ö
{ 	
var 
	validator 
= 
new ,
 CreateAttachmentCommandValidator  @
(@ A
)A B
;B C
var 
result 
= 
	validator "
." #
Validate# +
(+ ,
command, 3
)3 4
;4 5
if 
( 
! 
result 
. 
IsValid 
)  
{ 
throw 
new &
ServiceValidationException 4
(4 5
result5 ;
.; <
ToString< D
(D E
)E F
)F G
;G H
} 
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
}   «
qC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Attachment\CreateAttachment\CreateAttachmentCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &

Attachment& 0
.0 1
CreateAttachment1 A
{ 
public		 

class		 )
CreateAttachmentCommandResult		 .
{

 
} 
} º
tC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Attachment\CreateAttachment\CreateAttachmentCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &

Attachment& 0
.0 1
CreateAttachment1 A
{		 
public

 

class

 ,
 CreateAttachmentCommandValidator

 1
:

2 3
AbstractValidator

4 E
<

E F#
CreateAttachmentCommand

F ]
>

] ^
{ 
public ,
 CreateAttachmentCommandValidator /
(/ 0
)0 1
{ 	
} 	
} 
} Ì
]C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\CreateBoard\CreateBoardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
CreateBoard- 8
{ 
public 

sealed 
class 
CreateBoardCommand *
:+ ,
IRequest- 5
<5 6$
CreateBoardCommandResult6 N
>N O
{ 
public 
CreateBoardCommand !
(! "
string" (
boardId) 0
,0 1
string2 8
ownerId9 @
,@ A
stringB H
nameI M
,M N
stringO U
descriptionV a
)a b
{ 	
BoardId		 
=		 
boardId		 
;		 
OwnerId

 
=

 
ownerId

 
;

 
Name 
= 
name 
; 
Description 
= 
description %
;% &
} 	
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
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
} Ö3
dC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\CreateBoard\CreateBoardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Boards

& ,
.

, -
CreateBoard

- 8
{ 
public 

sealed 
class %
CreateBoardCommandHandler 1
:2 3
IRequestHandler4 C
<C D
CreateBoardCommandD V
,V W$
CreateBoardCommandResultX p
>p q
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public %
CreateBoardCommandHandler (
(( )
IBoardRepository 
boardRepository +
)+ ,
{ 	
_boardRepository 
= 
boardRepository .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
boardRepositoryY h
)h i
)i j
;j k
} 	
public 
async 
Task 
< $
CreateBoardCommandResult 2
>2 3
Handle4 :
(: ;
CreateBoardCommand; M
requestN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	$
CreateBoardCommandResult $
result% +
=, -
new. 1$
CreateBoardCommandResult2 J
(J K
)K L
;L M
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4(
CreateBoardCommandResultItem4 P
>P Q
(Q R
)R S
;S T
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *(
CreateBoardCommandResultItem+ G
(G H
)H I
;I J
try 
{ 
var   
	validator   
=   
new    #'
CreateBoardCommandValidator  $ ?
(  ? @
)  @ A
;  A B
var!! 
validationResult!! $
=!!% &
	validator!!' 0
.!!0 1
Validate!!1 9
(!!9 :
request!!: A
)!!A B
;!!B C
if## 
(## 
validationResult## $
.##$ %
IsValid##% ,
)##, -
{$$ 
Board&& 
board&& 
=&&  !
_boardRepository&&" 2
.&&2 3
Add&&3 6
(&&6 7
new&&7 :
Board&&; @
(&&@ A
)&&A B
{&&C D
BoardId&&E L
=&&M N
request&&O V
.&&V W
BoardId&&W ^
,&&^ _
Name&&` d
=&&e f
request&&g n
.&&n o
Name&&o s
,&&s t
OwnerId&&u |
=&&} ~
request	&& Ü
.
&&Ü á
OwnerId
&&á é
,
&&é è
Description
&&ê õ
=
&&ú ù
request
&&û •
.
&&• ¶
Description
&&¶ ±
}
&&≤ ≥
)
&&≥ ¥
;
&&¥ µ
result'' 
.'' 
ResultObject'' '
.''' (
Data''( ,
.'', -
BoardId''- 4
=''5 6
board''7 <
.''< =
BoardId''= D
;''D E
result(( 
.(( 
ResultObject(( '
.((' (
Data((( ,
.((, -
Name((- 1
=((2 3
board((4 9
.((9 :
Name((: >
;((> ?
result)) 
.)) 
ResultObject)) '
.))' (
Data))( ,
.)), -
Description))- 8
=))9 :
board)); @
.))@ A
Description))A L
;))L M
result** 
.** 
ResultObject** '
.**' (
Data**( ,
.**, -
OwnerId**- 4
=**5 6
board**7 <
.**< =
OwnerId**= D
;**D E
result,, 
.,, 
ResultObject,, '
.,,' (
Success,,( /
=,,0 1
true,,2 6
;,,6 7
}.. 
else// 
{00 
result11 
.11 
ResultObject11 '
.11' (
ServiceMessageList11( :
.11: ;
Add11; >
(11> ?
new11? B
ServiceMessage11C Q
(11Q R
)11R S
{11T U
ServiceMessageType11V h
=11i j
eServiceMessageType11k ~
.11~ 
Error	11 Ñ
,
11Ñ Ö
UserFriendlyText
11Ü ñ
=
11ó ò
validationResult
11ô ©
.
11© ™
Errors
11™ ∞
[
11∞ ±
$num
11± ≤
]
11≤ ≥
.
11≥ ¥
ErrorMessage
11¥ ¿
}
11¡ ¬
)
11¬ √
;
11√ ƒ
result22 
.22 
ResultObject22 '
.22' (
Success22( /
=220 1
false222 7
;227 8
}33 
}44 
catch55 
(55 
	Exception55 
ex55 
)55  
{66 
result77 
.77 
ResultObject77 #
.77# $
ServiceMessageList77$ 6
.776 7
Add777 :
(77: ;
new77; >
ServiceMessage77? M
(77M N
)77N O
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
$str;; I
+;;J K
ex;;L N
.;;N O
Message;;O V
+;;W X
$str;;Y k
+;;l m
ex;;n p
.;;p q
InnerException;;q 
}<< 
)<< 
;<< 
}== 
return@@ 
result@@ 
;@@ 
}BB 	
}CC 
}DD ˆ

cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\CreateBoard\CreateBoardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
CreateBoard- 8
{ 
public 

class $
CreateBoardCommandResult )
{ 
public 
ServiceResult 
< (
CreateBoardCommandResultItem 9
>9 :
ResultObject; G
{H I
getJ M
;M N
setO R
;R S
}T U
} 
public

 

class

 (
CreateBoardCommandResultItem

 -
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} §
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\CreateBoard\CreateBoardCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
CreateBoard- 8
{ 
public 

class '
CreateBoardCommandValidator ,
:- .
AbstractValidator/ @
<@ A
CreateBoardCommandA S
>S T
{ 
public '
CreateBoardCommandValidator *
(* +
)+ ,
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
BoardId		 "
)		" #
.		# $
NotEmpty		$ ,
(		, -
)		- .
.		. /
WithMessage		/ :
(		: ;
$str		; Q
)		Q R
;		R S
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Name

 
)

  
.

  !
NotEmpty

! )
(

) *
)

* +
.

+ ,
WithMessage

, 7
(

7 8
$str

8 J
)

J K
;

K L
RuleFor 
( 
x 
=> 
x 
. 
Description &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
.2 3
WithMessage3 >
(> ?
$str? X
)X Y
;Y Z
} 	
} 
} ¯
]C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\DeleteBoard\DeleteBoardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
DeleteBoard- 8
{ 
public 

sealed 
class 
DeleteBoardCommand *
:+ ,
IRequest- 5
<5 6$
DeleteBoardCommandResult6 N
>N O
{ 
public 
DeleteBoardCommand !
(! "
string" (
boardId) 0
)0 1
{ 	
BoardId		 
=		 
boardId		 
;		 
}

 	
public 
string 
BoardId 
{ 
get  #
;# $
}% &
} 
} ¬$
dC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\DeleteBoard\DeleteBoardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Boards

& ,
.

, -
DeleteBoard

- 8
{ 
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
public %
DeleteBoardCommandHandler (
(( )
IBoardRepository 
boardRepository +
)+ ,
{ 	
_boardRepository 
= 
boardRepository .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
boardRepositoryY h
)h i
)i j
;j k
} 	
public 
async 
Task 
< $
DeleteBoardCommandResult 2
>2 3
Handle4 :
(: ;
DeleteBoardCommand; M
requestN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	$
DeleteBoardCommandResult $
result% +
=, -
new. 1$
DeleteBoardCommandResult2 J
(J K
)K L
;L M
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
bool4 8
>8 9
(9 :
): ;
;; <
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
false' ,
;, -
try 
{   
var!! 
	validator!! 
=!! 
new!!  #'
DeleteBoardCommandValidator!!$ ?
(!!? @
)!!@ A
;!!A B
var"" 
validationResult"" $
=""% &
	validator""' 0
.""0 1
Validate""1 9
(""9 :
request"": A
)""A B
;""B C
if$$ 
($$ 
validationResult$$ $
.$$$ %
IsValid$$% ,
)$$, -
{%% 
_boardRepository'' $
.''$ %
Delete''% +
(''+ ,
new'', /
Board''0 5
(''5 6
)''6 7
{''8 9
BoardId'': A
=''B C
request''D K
.''K L
BoardId''L S
}''T U
)''U V
;''V W
result(( 
.(( 
ResultObject(( '
.((' (
Data((( ,
=((- .
true((/ 3
;((3 4
result)) 
.)) 
ResultObject)) '
.))' (
Success))( /
=))0 1
true))2 6
;))6 7
}** 
else++ 
{,, 
result-- 
.-- 
ResultObject-- '
.--' (
Success--( /
=--0 1
false--2 7
;--7 8
}.. 
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
result22 
.22 
ResultObject22 #
.22# $
ServiceMessageList22$ 6
.226 7
Add227 :
(22: ;
new22; >
ServiceMessage22? M
(22M N
)22N O
{33 
ServiceMessageType44 &
=44' (
eServiceMessageType44) <
.44< =
Error44= B
,44B C
UserFriendlyText55 $
=55% &
$str55' 9
,559 :
LogText66 
=66 
$str66 L
+66M N
ex66O Q
.66Q R
Message66R Y
+66Z [
$str66\ n
+66o p
ex66q s
.66s t
InnerException	66t Ç
}77 
)77 
;77 
}88 
return:: 
result:: 
;:: 
};; 	
}<< 
}>> Ç
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\DeleteBoard\DeleteBoardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
DeleteBoard- 8
{ 
public 

class $
DeleteBoardCommandResult )
{ 
public 
ServiceResult 
< 
bool !
>! "
ResultObject# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ≈
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\DeleteBoard\DeleteBoardCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
DeleteBoard- 8
{ 
public 

class '
DeleteBoardCommandValidator ,
:- .
AbstractValidator/ @
<@ A
DeleteBoardCommandA S
>S T
{		 
public

 '
DeleteBoardCommandValidator

 *
(

* +
)

+ ,
{ 	
RuleFor 
( 
x 
=> 
x 
. 
BoardId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} ä
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardDetail\GetBoardDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardDetail- ;
{ 
public 

sealed 
class !
GetBoardDetailCommand -
:. /
IRequest0 8
<8 9'
GetBoardDetailCommandResult9 T
>T U
{ 
public !
GetBoardDetailCommand $
($ %
string% +
boardId, 3
)3 4
{		 	
BoardId

 
=

 
boardId

 
;

 
} 	
public 
string 
BoardId 
{ 
get  #
;# $
}% &
} 
} °)
jC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardDetail\GetBoardDetailCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Boards

& ,
.

, -
GetBoardDetail

- ;
{ 
public 

class (
GetBoardDetailCommandHandler -
:. /
IRequestHandler0 ?
<? @!
GetBoardDetailCommand@ U
,U V'
GetBoardDetailCommandResultW r
>r s
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public (
GetBoardDetailCommandHandler +
(+ ,
IBoardRepository, <
boardRepository= L
)L M
{ 	
_boardRepository 
= 
boardRepository .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
boardRepositoryY h
)h i
)i j
;j k
} 	
public 
async 
Task 
< '
GetBoardDetailCommandResult 5
>5 6
Handle7 =
(= >!
GetBoardDetailCommand> S
requestT [
,[ \
CancellationToken] n
cancellationToken	o Ä
)
Ä Å
{ 	'
GetBoardDetailCommandResult '
result( .
=/ 0
new1 4'
GetBoardDetailCommandResult5 P
(P Q
)Q R
;R S
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4+
GetBoardDetailCommandResultItem4 S
>S T
(T U
)U V
;V W
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *+
GetBoardDetailCommandResultItem+ J
(J K
)K L
;L M
try 
{ 
var   
	validator   
=   
new    #*
GetBoardDetailCommandValidator  $ B
(  B C
)  C D
;  D E
var!! 
validationResult!! $
=!!% &
	validator!!' 0
.!!0 1
Validate!!1 9
(!!9 :
request!!: A
)!!A B
;!!B C
if## 
(## 
validationResult## $
.##$ %
IsValid##% ,
)##, -
{$$ 
Board&& 
board&& 
=&&  !
_boardRepository&&" 2
.&&2 3
Get&&3 6
(&&6 7
x&&7 8
=>&&9 ;
x&&< =
.&&= >
BoardId&&> E
==&&F H
request&&I P
.&&P Q
BoardId&&Q X
)&&X Y
;&&Y Z
result'' 
.'' 
ResultObject'' '
.''' (
Data''( ,
.'', -
BoardId''- 4
=''5 6
board''7 <
.''< =
BoardId''= D
;''D E
result(( 
.(( 
ResultObject(( '
.((' (
Data((( ,
.((, -
Name((- 1
=((2 3
board((4 9
.((9 :
Name((: >
;((> ?
result)) 
.)) 
ResultObject)) '
.))' (
Data))( ,
.)), -
Description))- 8
=))9 :
board)); @
.))@ A
Description))A L
;))L M
result++ 
.++ 
ResultObject++ '
.++' (
Success++( /
=++0 1
true++2 6
;++6 7
}-- 
else.. 
{// 
result00 
.00 
ResultObject00 '
.00' (
Success00( /
=000 1
false002 7
;007 8
}11 
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
result55 
.55 
ResultObject55 #
.55# $
ServiceMessageList55$ 6
.556 7
Add557 :
(55: ;
new55; >
ServiceMessage55? M
(55M N
)55N O
{66 
ServiceMessageType77 &
=77' (
eServiceMessageType77) <
.77< =
Error77= B
,77B C
UserFriendlyText88 $
=88% &
$str88' 9
,889 :
LogText99 
=99 
$str99 T
+99U V
ex99W Y
.99Y Z
Message99Z a
,99a b
SystemException:: #
=::$ %
ex::& (
};; 
);; 
;;; 
}<< 
return>> 
result>> 
;>> 
}@@ 	
}BB 
}CC Ì	
iC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardDetail\GetBoardDetailCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardDetail- ;
{ 
public 

class '
GetBoardDetailCommandResult ,
{ 
public 
ServiceResult 
< +
GetBoardDetailCommandResultItem <
>< =
ResultObject> J
{K L
getM P
;P Q
setR U
;U V
}W X
} 
public

 

class

 +
GetBoardDetailCommandResultItem

 0
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set* -
;- .
}/ 0
} 
} ◊
lC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardDetail\GetBoardDetailCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardDetail- ;
{ 
public 
class
 *
GetBoardDetailCommandValidator .
:/ 0
AbstractValidator1 B
<B C!
GetBoardDetailCommandC X
>X Y
{		 
public

 *
GetBoardDetailCommandValidator

 -
(

- .
)

. /
{ 	
RuleFor 
( 
x 
=> 
x 
. 
BoardId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} ú
_C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardList\GetBoardListCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardList- 9
{ 
public 

sealed 
class 
GetBoardListCommand +
:, -
IRequest. 6
<6 7%
GetBoardListCommandResult7 P
>P Q
{ 
public 
string 
BoardId 
{ 
get  #
;# $
}% &
}

 
} ‰*
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardList\GetBoardListCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardList- 9
{ 
public 

class &
GetBoardListCommandHandler +
:, -
IRequestHandler. =
<= >
GetBoardListCommand> Q
,Q R%
GetBoardListCommandResultS l
>l m
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public &
GetBoardListCommandHandler )
() *
IBoardRepository* :
boardRepository; J
)J K
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
< %
GetBoardListCommandResult 3
>3 4
Handle5 ;
(; <
GetBoardListCommand< O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	%
GetBoardListCommandResult %
result& ,
=- .
new/ 2%
GetBoardListCommandResult3 L
(L M
)M N
;N O
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9)
GetBoardListCommandResultItem9 V
>V W
>W X
(X Y
)Y Z
;Z [
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0)
GetBoardListCommandResultItem0 M
>M N
(N O
)O P
;P Q
try 
{   
var## 
	validator## 
=## 
new##  #(
GetBoardListCommandValidator##$ @
(##@ A
)##A B
;##B C
var$$ 
validationResult$$ $
=$$% &
	validator$$' 0
.$$0 1
Validate$$1 9
($$9 :
request$$: A
)$$A B
;$$B C
if&& 
(&& 
validationResult&& $
.&&$ %
IsValid&&% ,
)&&, -
{'' 
List)) 
<)) 
Board)) 
>)) 
	boardList))  )
=))* +
_boardRepository)), <
.))< =
GetList))= D
())D E
x))E F
=>))G I
x))J K
.))K L
BoardId))L S
==))T V
request))W ^
.))^ _
BoardId))_ f
)))f g
;))g h
result** 
.** 
ResultObject** '
.**' (
Data**( ,
=**- .
	boardList**/ 8
.**8 9
Select**9 ?
(**? @
x**@ A
=>**B D
new**E H)
GetBoardListCommandResultItem**I f
(**f g
)**g h
{++ 
BoardId,, 
=,,  !
x,," #
.,,# $
BoardId,,$ +
,,,+ ,
Name-- 
=-- 
x--  
.--  !
Name--! %
,--% &
Description.. #
=..$ %
x..& '
...' (
Description..( 3
}// 
)// 
.// 
ToList// 
(// 
)// 
;//  
result11 
.11 
ResultObject11 '
.11' (
Success11( /
=110 1
true112 6
;116 7
}33 
else44 
{55 
result66 
.66 
ResultObject66 '
.66' (
Success66( /
=660 1
false662 7
;667 8
}77 
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
result;; 
.;; 
ResultObject;; #
.;;# $
ServiceMessageList;;$ 6
.;;6 7
Add;;7 :
(;;: ;
new;;; >
ServiceMessage;;? M
(;;M N
);;N O
{<< 
ServiceMessageType== &
===' (
eServiceMessageType==) <
.==< =
Error=== B
,==B C
UserFriendlyText>> $
=>>% &
$str>>' 9
,>>9 :
LogText?? 
=?? 
$str?? R
+??S T
ex??U W
.??W X
Message??X _
,??_ `
SystemException@@ #
=@@$ %
ex@@& (
}AA 
)AA 
;AA 
}BB 
returnDD 
resultDD 
;DD 
}FF 	
}HH 
}II ë

eC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardList\GetBoardListCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardList- 9
{ 
public 

class %
GetBoardListCommandResult *
{ 
public		 
ServiceResult		 
<		 
List		 !
<		! ")
GetBoardListCommandResultItem		" ?
>		? @
>		@ A
ResultObject		B N
{		O P
get		Q T
;		T U
set		V Y
;		Y Z
}		[ \
}

 
public 

class )
GetBoardListCommandResultItem .
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} À
hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardList\GetBoardListCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardList- 9
{ 
public 

class (
GetBoardListCommandValidator -
:. /
AbstractValidator0 A
<A B
GetBoardListCommandB U
>U V
{		 
public

 (
GetBoardListCommandValidator

 +
(

+ ,
)

, -
{ 	
RuleFor 
( 
x 
=> 
x 
. 
BoardId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} º
iC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardSwimLanes\GetBoardSwimLanesCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardSwimLanes- >
{ 
public 

sealed 
class $
GetBoardSwimLanesCommand 0
:1 2
IRequest3 ;
<; <*
GetBoardSwimLanesCommandResult< Z
>Z [
{ 
public $
GetBoardSwimLanesCommand '
(' (
string( .
boardId/ 6
)6 7
{ 	
BoardId		 
=		 
boardId		 
;		 
}

 	
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} √+
pC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardSwimLanes\GetBoardSwimLanesCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardSwimLanes- >
{ 
public 

class +
GetBoardSwimLanesCommandHandler 0
:1 2
IRequestHandler3 B
<B C$
GetBoardSwimLanesCommandC [
,[ \*
GetBoardSwimLanesCommandResult] {
>{ |
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public +
GetBoardSwimLanesCommandHandler .
(. /
IBoardRepository/ ?
boardRepository@ O
)O P
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
< *
GetBoardSwimLanesCommandResult 8
>8 9
Handle: @
(@ A$
GetBoardSwimLanesCommandA Y
requestZ a
,a b
CancellationTokenc t
cancellationToken	u Ü
)
Ü á
{ 	*
GetBoardSwimLanesCommandResult *
result+ 1
=2 3
new4 7*
GetBoardSwimLanesCommandResult8 V
(V W
)W X
;X Y
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9.
"GetBoardSwimLanesCommandResultItem9 [
>[ \
>\ ]
(] ^
)^ _
;_ `
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0.
"GetBoardSwimLanesCommandResultItem0 R
>R S
(S T
)T U
;U V
try 
{   
var!! 
	validator!! 
=!! 
new!!  #-
!GetBoardSwimLanesCommandValidator!!$ E
(!!E F
)!!F G
;!!G H
var"" 
validationResult"" $
=""% &
	validator""' 0
.""0 1
Validate""1 9
(""9 :
request"": A
)""A B
;""B C
if$$ 
($$ 
validationResult$$ $
.$$$ %
IsValid$$% ,
)$$, -
{%% 
List'' 
<'' 
SwimLane'' !
>''! "
	boardList''# ,
=''- .
_boardRepository''/ ?
.''? @
GetBoardSwimLanes''@ Q
(''Q R
request''R Y
.''Y Z
BoardId''Z a
)''a b
;''b c
result(( 
.(( 
ResultObject(( '
.((' (
Data((( ,
=((- .
	boardList((/ 8
.((8 9
Select((9 ?
(((? @
x((@ A
=>((B D
new((E H.
"GetBoardSwimLanesCommandResultItem((I k
(((k l
)((l m
{)) 

SwimLaneId** "
=**# $
x**% &
.**& '

SwimLaneId**' 1
,**1 2
BoardId++ 
=++  !
x++" #
.++# $
BoardId++$ +
,+++ ,
Name,, 
=,, 
x,,  
.,,  !
Name,,! %
,,,% &
Position--  
=--! "
x--# $
.--$ %
Position--% -
}.. 
).. 
... 
ToList.. 
(.. 
).. 
;..  
result00 
.00 
ResultObject00 '
.00' (
Success00( /
=000 1
true002 6
;006 7
}22 
else33 
{44 
result55 
.55 
ResultObject55 '
.55' (
Success55( /
=550 1
false552 7
;557 8
}66 
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
result:: 
.:: 
ResultObject:: #
.::# $
ServiceMessageList::$ 6
.::6 7
Add::7 :
(::: ;
new::; >
ServiceMessage::? M
(::M N
)::N O
{;; 
ServiceMessageType<< &
=<<' (
eServiceMessageType<<) <
.<<< =
Error<<= B
,<<B C
UserFriendlyText== $
===% &
$str==' 9
,==9 :
LogText>> 
=>> 
$str>> W
+>>X Y
ex>>Z \
.>>\ ]
Message>>] d
,>>d e
SystemException?? #
=??$ %
ex??& (
}@@ 
)@@ 
;@@ 
}AA 
returnCC 
resultCC 
;CC 
}EE 	
}GG 
}JJ «
oC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardSwimLanes\GetBoardSwimLanesCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardSwimLanes- >
{ 
public 

class *
GetBoardSwimLanesCommandResult /
{		 
public

 
ServiceResult

 
<

 
List

 !
<

! ".
"GetBoardSwimLanesCommandResultItem

" D
>

D E
>

E F
ResultObject

G S
{

T U
get

V Y
;

Y Z
set

[ ^
;

^ _
}

` a
} 
public 

class .
"GetBoardSwimLanesCommandResultItem 3
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} È
rC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\GetBoardSwimLanes\GetBoardSwimLanesCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
GetBoardSwimLanes- >
{ 
public 	
class
 -
!GetBoardSwimLanesCommandValidator 1
:2 3
AbstractValidator4 E
<E F$
GetBoardSwimLanesCommandF ^
>^ _
{		 
public

 -
!GetBoardSwimLanesCommandValidator

 0
(

0 1
)

1 2
{ 	
RuleFor 
( 
x 
=> 
x 
. 
BoardId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} ı
]C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\UpdateBoard\UpdateBoardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
UpdateBoard- 8
{ 
public 

class 
UpdateBoardCommand #
:$ %
IRequest& .
<. /$
UpdateBoardCommandResult/ G
>G H
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
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ñ'
dC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\UpdateBoard\UpdateBoardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Boards

& ,
.

, -
UpdateBoard

- 8
{ 
public 

sealed 
class %
UpdateBoardCommandHandler 1
:2 3
IRequestHandler4 C
<C D
UpdateBoardCommandD V
,V W$
UpdateBoardCommandResultX p
>p q
{ 
private 
readonly 
IBoardRepository )
_boardRepository* :
;: ;
public %
UpdateBoardCommandHandler (
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
UpdateBoardCommandResult 2
>2 3
Handle4 :
(: ;
UpdateBoardCommand; M
requestN U
,U V
CancellationTokenW h
cancellationTokeni z
)z {
{ 	$
UpdateBoardCommandResult $
result% +
=, -
new. 1$
UpdateBoardCommandResult2 J
(J K
)K L
;L M
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4(
UpdateBoardCommandResultItem4 P
>P Q
(Q R
)R S
;S T
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *(
UpdateBoardCommandResultItem+ G
(G H
)H I
;I J
try   
{!! 
_boardRepository""  
.""  !
Update""! '
(""' (
new""( +
Board"", 1
(""1 2
)""2 3
{""4 5
BoardId""6 =
=""> ?
request""@ G
.""G H
BoardId""H O
,""O P
Name""Q U
=""V W
request""X _
.""_ `
Name""` d
,""d e
Description""f q
=""r s
request""t {
.""{ |
Description	""| á
,
""á à
OwnerId
""â ê
=
""ë í
request
""ì ö
.
""ö õ
OwnerId
""õ ¢
}
""£ §
)
""§ •
;
""• ¶
result## 
.## 
ResultObject## #
.### $
Data##$ (
.##( )
BoardId##) 0
=##1 2
request##3 :
.##: ;
BoardId##; B
;##B C
result$$ 
.$$ 
ResultObject$$ #
.$$# $
Data$$$ (
.$$( )
Name$$) -
=$$. /
request$$0 7
.$$7 8
Name$$8 <
;$$< =
result%% 
.%% 
ResultObject%% #
.%%# $
Data%%$ (
.%%( )
Description%%) 4
=%%5 6
request%%7 >
.%%> ?
Description%%? J
;%%J K
result&& 
.&& 
ResultObject&& #
.&&# $
Data&&$ (
.&&( )
OwnerId&&) 0
=&&1 2
request&&3 :
.&&: ;
OwnerId&&; B
;&&B C
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
result** 
.** 
ResultObject** #
.**# $
ServiceMessageList**$ 6
.**6 7
Add**7 :
(**: ;
new**; >
ServiceMessage**? M
(**M N
)**N O
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
InnerException	..t Ç
}// 
)// 
;// 
}00 
return22 
result22 
;22 
}44 	
}55 
}88 ˆ

cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\UpdateBoard\UpdateBoardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
UpdateBoard- 8
{ 
public 

class $
UpdateBoardCommandResult )
{ 
public 
ServiceResult 
< (
UpdateBoardCommandResultItem 9
>9 :
ResultObject; G
{H I
getJ M
;M N
setO R
;R S
}T U
} 
public		 

class		 (
UpdateBoardCommandResultItem		 -
{

 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
OwnerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
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
} ≈
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Boards\UpdateBoard\UpdateBoardCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Boards& ,
., -
UpdateBoard- 8
{ 
public 	
class '
UpdateBoardCommandValidator ,
:- .
AbstractValidator/ @
<@ A
UpdateBoardCommandA S
>S T
{		 
public

 '
UpdateBoardCommandValidator

 *
(

* +
)

+ ,
{ 	
RuleFor 
( 
x 
=> 
x 
. 
BoardId "
)" #
.# $
NotEmpty$ ,
(, -
)- .
.. /
WithMessage/ :
(: ;
$str; Q
)Q R
;R S
} 	
} 
} ü

ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{ 
public 

sealed 
class 
CreateCardCommand )
:* +
IRequest, 4
<4 5#
CreateCardCommandResult5 L
>L M
{ 
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
" #
set

$ '
;

' (
}

) *
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
} •)
aC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Cards

& +
.

+ ,

CreateCard

, 6
{ 
public 

sealed 
class $
CreateCardCommandHandler 0
:1 2
IRequestHandler3 B
<B C
CreateCardCommandC T
,T U#
CreateCardCommandResultV m
>m n
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public $
CreateCardCommandHandler '
(' (
ICardRepository( 7
cardRepository8 F
)F G
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< #
CreateCardCommandResult 1
>1 2
Handle3 9
(9 :
CreateCardCommand: K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	#
CreateCardCommandResult #
result$ *
=+ ,
new- 0#
CreateCardCommandResult1 H
(H I
)I J
;J K
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4'
CreateCardCommandResultItem4 O
>O P
(P Q
)Q R
;R S
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *'
CreateCardCommandResultItem+ F
(F G
)G H
;H I
try 
{ 
var 
	validator 
= 
new  #&
CreateCardCommandValidator$ >
(> ?
)? @
;@ A
var 
validationResult $
=% &
	validator' 0
.0 1
Validate1 9
(9 :
request: A
)A B
;B C
if!! 
(!! 
!!! 
validationResult!! %
.!!% &
IsValid!!& -
)!!- .
{"" 
Card$$ 
card$$ 
=$$ 
new$$  #
Card$$$ (
($$( )
)$$) *
;$$* +
card%% 
.%% 
BoardId%%  
=%%! "
request%%# *
.%%* +
BoardId%%+ 2
;%%2 3
card&& 
.&& 

SwimLaneId&& #
=&&$ %
request&&& -
.&&- .

SwimLaneId&&. 8
;&&8 9
card'' 
.'' 
CardId'' 
=''  !
request''" )
.'') *
CardId''* 0
;''0 1
card(( 
.(( 
Name(( 
=(( 
request((  '
.((' (
Name((( ,
;((, -
card)) 
.)) 
Description)) $
=))% &
request))' .
.)). /
Description))/ :
;)): ;
card** 
=** 
_cardRepository** *
.*** +
Add**+ .
(**. /
card**/ 3
)**3 4
;**4 5
result-- 
.-- 
ResultObject-- '
.--' (
Success--( /
=--0 1
true--2 6
;--6 7
}.. 
else// 
{00 
result11 
.11 
ResultObject11 '
.11' (
Success11( /
=110 1
false112 7
;117 8
}22 
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
result66 
.66 
ResultObject66 #
.66# $
ServiceMessageList66$ 6
.666 7
Add667 :
(66: ;
new66; >
ServiceMessage66? M
(66M N
)66N O
{77 
ServiceMessageType88 &
=88' (
eServiceMessageType88) <
.88< =
Error88= B
,88B C
UserFriendlyText99 $
=99% &
$str99' 9
,999 :
LogText:: 
=:: 
$str:: W
+::X Y
ex::Z \
.::\ ]
Message::] d
,::d e
SystemException;; #
=;;$ %
ex;;& (
}<< 
)<< 
;<< 
}== 
return?? 
result?? 
;?? 
}@@ 	
}AA 
}BB Î

`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{ 
public 

class #
CreateCardCommandResult (
{ 
public 
ServiceResult 
< '
CreateCardCommandResultItem 8
>8 9
ResultObject: F
{G H
getI L
;L M
setN Q
;Q R
}S T
} 
public

 

class

 '
CreateCardCommandResultItem

 ,
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} õ
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\CreateCard\CreateCardCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

CreateCard, 6
{ 
public 

class &
CreateCardCommandValidator +
:, -
AbstractValidator. ?
<? @
CreateCardCommand@ Q
>Q R
{ 
public &
CreateCardCommandValidator )
() *
)* +
{ 	
RuleFor		 
(		 
x		 
=>		 
x		 
.		 
CardId		 !
)		! "
.		" #
NotEmpty		# +
(		+ ,
)		, -
.		- .
WithMessage		. 9
(		9 :
$str		: O
)		O P
;		P Q
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Name

 
)

  
.

  !
NotEmpty

! )
(

) *
)

* +
.

+ ,
WithMessage

, 7
(

7 8
$str

8 J
)

J K
;

K L
RuleFor 
( 
x 
=> 
x 
. 
Description &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
.2 3
WithMessage3 >
(> ?
$str? X
)X Y
;Y Z
} 	
} 
} õ
ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\DeleteCard\DeleteCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

DeleteCard, 6
{ 
public 

class 
DeleteCardCommand "
:# $
IRequest% -
<- .#
DeleteCardCommandResult. E
>E F
{ 
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∑$
aC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\DeleteCard\DeleteCardCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

DeleteCard, 6
{ 
public 
class	 $
DeleteCardCommandHandler '
:( )
IRequestHandler* 9
<9 :
DeleteCardCommand: K
,K L#
DeleteCardCommandResultM d
>d e
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public $
DeleteCardCommandHandler '
(' (
ICardRepository( 7
cardRepository8 F
)F G
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< #
DeleteCardCommandResult 1
>1 2
Handle3 9
(9 :
DeleteCardCommand: K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	#
DeleteCardCommandResult #
result$ *
=+ ,
new- 0#
DeleteCardCommandResult1 H
(H I
)I J
;J K
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4'
DeleteCardCommandResultItem4 O
>O P
(P Q
)Q R
;R S
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *'
DeleteCardCommandResultItem+ F
(F G
)G H
;H I
try 
{ 
var 
	validator 
= 
new  #&
DeleteCardCommandValidator$ >
(> ?
)? @
;@ A
var   
validationResult   $
=  % &
	validator  ' 0
.  0 1
Validate  1 9
(  9 :
request  : A
)  A B
;  B C
if"" 
("" 
!"" 
validationResult"" %
.""% &
IsValid""& -
)""- .
{## 
Card%% 
card%% 
=%% 
new%%  #
Card%%$ (
(%%( )
)%%) *
;%%* +
card'' 
.'' 
CardId'' 
=''  !
request''" )
.'') *
CardId''* 0
;''0 1
_cardRepository)) #
.))# $
Delete))$ *
())* +
card))+ /
)))/ 0
;))0 1
result,, 
.,, 
ResultObject,, '
.,,' (
Success,,( /
=,,0 1
true,,2 6
;,,6 7
}-- 
else.. 
{// 
result00 
.00 
ResultObject00 '
.00' (
Success00( /
=000 1
false002 7
;007 8
}11 
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
result55 
.55 
ResultObject55 #
.55# $
ServiceMessageList55$ 6
.556 7
Add557 :
(55: ;
new55; >
ServiceMessage55? M
(55M N
)55N O
{66 
ServiceMessageType77 &
=77' (
eServiceMessageType77) <
.77< =
Error77= B
,77B C
UserFriendlyText88 $
=88% &
$str88' 9
,889 :
LogText99 
=99 
$str99 W
+99X Y
ex99Z \
.99\ ]
Message99] d
,99d e
SystemException:: #
=::$ %
ex::& (
};; 
);; 
;;; 
}<< 
return>> 
result>> 
;>> 
}?? 	
}@@ 
}CC Î

`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\DeleteCard\DeleteCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

DeleteCard, 6
{ 
public 
class #
DeleteCardCommandResult (
{		 
public

 
ServiceResult

 
<

 '
DeleteCardCommandResultItem

 8
>

8 9
ResultObject

: F
{

G H
get

I L
;

L M
set

N Q
;

Q R
}

S T
} 
public 

class '
DeleteCardCommandResultItem ,
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} º
cC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\DeleteCard\DeleteCardCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

DeleteCard, 6
{ 
public 
class
 &
DeleteCardCommandValidator *
:+ ,
AbstractValidator- >
<> ?
DeleteCardCommand? P
>P Q
{		 
public

 &
DeleteCardCommandValidator

 )
(

) *
)

* +
{ 	
RuleFor 
( 
x 
=> 
x 
. 
CardId !
)! "
." #
NotEmpty# +
(+ ,
), -
.- .
WithMessage. 9
(9 :
$str: O
)O P
;P Q
} 	
} 
} æ
hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetAttachmentList\GetAttachmentListCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetAttachmentList, =
{		 
public

 

class

 $
GetAttachmentListCommand

 )
:

* +
IRequest

, 4
<

4 5*
GetAttachmentListCommandResult

5 S
>

S T
{ 
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} â+
oC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetAttachmentList\GetAttachmentListCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetAttachmentList, =
{ 
public 

class +
GetAttachmentListCommandHandler 0
:1 2
IRequestHandler3 B
<B C$
GetAttachmentListCommandC [
,[ \*
GetAttachmentListCommandResult] {
>{ |
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public +
GetAttachmentListCommandHandler .
(. /
ICardRepository/ >
cardRepository? M
)M N
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< *
GetAttachmentListCommandResult 8
>8 9
Handle: @
(@ A$
GetAttachmentListCommandA Y
requestZ a
,a b
CancellationTokenc t
cancellationToken	u Ü
)
Ü á
{ 	*
GetAttachmentListCommandResult *
result+ 1
=2 3
new4 7*
GetAttachmentListCommandResult8 V
(V W
)W X
;X Y
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9.
"GetAttachmentListCommandResultItem9 [
>[ \
>\ ]
(] ^
)^ _
;_ `
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0.
"GetAttachmentListCommandResultItem0 R
>R S
(S T
)T U
;U V
try 
{   
var!! 
	validator!! 
=!! 
new!!  #-
!GetAttachmentListCommandValidator!!$ E
(!!E F
)!!F G
;!!G H
var"" 
validationResult"" $
=""% &
	validator""' 0
.""0 1
Validate""1 9
(""9 :
request"": A
)""A B
;""B C
if$$ 
($$ 
!$$ 
validationResult$$ %
.$$% &
IsValid$$& -
)$$- .
{%% 
List'' 
<'' 
CardAttachment'' '
>''' (
cardAttachmentList'') ;
=''< =
_cardRepository''> M
.''M N
GetCardAttachments''N `
(''` a
request''a h
.''h i
CardId''i o
)''o p
;''p q
result(( 
.(( 
ResultObject(( '
.((' (
Data((( ,
=((- .
cardAttachmentList((/ A
.((A B
Select((B H
(((H I
x((I J
=>((K M
new((N Q.
"GetAttachmentListCommandResultItem((R t
(((t u
)((u v
{)) 
CardId** 
=**  
x**! "
.**" #
CardId**# )
,**) *
AttachmentName++ &
=++' (
x++) *
.++* +
AttachmentName+++ 9
,++9 :
CardAttachmentId,, (
=,,) *
x,,+ ,
.,,, -
CardAttachmentId,,- =
,,,= >"
AttachmentDownloadLink-- .
=--/ 0
x--1 2
.--2 3"
AttachmentDownloadLink--3 I
}.. 
).. 
... 
ToList.. 
(.. 
).. 
;..  
}// 
else00 
{11 
result22 
.22 
ResultObject22 '
.22' (
Success22( /
=220 1
false222 7
;227 8
}33 
}44 
catch55 
(55 
	Exception55 
ex55 
)55  
{66 
result77 
.77 
ResultObject77 #
.77# $
ServiceMessageList77$ 6
.776 7
Add777 :
(77: ;
new77; >
ServiceMessage77? M
(77M N
)77N O
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
$str;; V
+;;W X
ex;;Y [
.;;[ \
Message;;\ c
,;;c d
SystemException<< #
=<<$ %
ex<<& (
}== 
)== 
;== 
}>> 
return@@ 
result@@ 
;@@ 
}AA 	
}BB 
}CC Â
nC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetAttachmentList\GetAttachmentListCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetAttachmentList, =
{		 
public

 

class

 *
GetAttachmentListCommandResult

 /
{ 
public 
ServiceResult 
< 
List !
<! ".
"GetAttachmentListCommandResultItem" D
>D E
>E F
ResultObjectG S
{T U
getV Y
;Y Z
set[ ^
;^ _
}` a
} 
public 

class .
"GetAttachmentListCommandResultItem 3
{ 
public 
string 
CardId 
{ 
get "
;" #
set% (
;( )
}* +
public 
string 
AttachmentName $
{% &
get' *
;* +
set- 0
;0 1
}2 3
public 
string 
CardAttachmentId &
{' (
get) ,
;, -
set/ 2
;2 3
}4 5
public 
string "
AttachmentDownloadLink ,
{- .
get/ 2
;2 3
set5 8
;8 9
}: ;
} 
} Ê
qC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetAttachmentList\GetAttachmentListCommandValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetAttachmentList, =
{		 
public

 

class

 -
!GetAttachmentListCommandValidator

 2
:

3 4
AbstractValidator

5 F
<

F G$
GetAttachmentListCommand

G _
>

_ `
{ 
public -
!GetAttachmentListCommandValidator 0
(0 1
)1 2
{ 	
RuleFor 
( 
x 
=> 
x 
. 
CardId !
)! "
." #
NotEmpty# +
(+ ,
), -
.- .
WithMessage. 9
(9 :
$str: O
)O P
;P Q
} 	
} 
} ™
`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardDetail\GetCardDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardDetail, 9
{ 
public 

class  
GetCardDetailCommand %
:& '
IRequest( 0
<0 1&
GetCardDetailCommandResult1 K
>K L
{ 
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}		 —#
gC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardDetail\GetCardDetailCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardDetail, 9
{ 
public 

class '
GetCardDetailCommandHandler ,
:- .
IRequestHandler/ >
<> ? 
GetCardDetailCommand? S
,S T&
GetCardDetailCommandResultU o
>o p
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public '
GetCardDetailCommandHandler *
(* +
ICardRepository+ :
cardRepository; I
)I J
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< &
GetCardDetailCommandResult 4
>4 5
Handle6 <
(< = 
GetCardDetailCommand= Q
requestR Y
,Y Z
CancellationToken 
cancellationToken /
)/ 0
{ 	&
GetCardDetailCommandResult &
result' -
=. /
new0 3&
GetCardDetailCommandResult4 N
(N O
)O P
;P Q
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4*
GetCardDetailCommandResultItem4 R
>R S
(S T
)T U
;U V
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result   
.   
ResultObject   
.    
Data    $
=  % &
new  ' **
GetCardDetailCommandResultItem  + I
(  I J
)  J K
;  K L
try## 
{$$ 
Card%% 
card%% 
=%% 
_cardRepository%% +
.%%+ ,
Get%%, /
(%%/ 0
x%%0 1
=>%%2 4
x%%5 6
.%%6 7
CardId%%7 =
==%%> @
request%%A H
.%%H I
CardId%%I O
)%%O P
;%%P Q
result&& 
.&& 
ResultObject&& #
.&&# $
Data&&$ (
.&&( )
CardId&&) /
=&&0 1
card&&2 6
.&&6 7
CardId&&7 =
;&&= >
result'' 
.'' 
ResultObject'' #
.''# $
Data''$ (
.''( )
Name'') -
=''. /
card''0 4
.''4 5
Name''5 9
;''9 :
result(( 
.(( 
ResultObject(( #
.((# $
Data(($ (
.((( )
Description(() 4
=((5 6
card((7 ;
.((; <
Description((< G
;((G H
result** 
.** 
ResultObject** #
.**# $
Success**$ +
=**, -
true**. 2
;**2 3
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
result.. 
... 
ResultObject.. #
...# $
ServiceMessageList..$ 6
...6 7
Add..7 :
(..: ;
new..; >
ServiceMessage..? M
(..M N
)..N O
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
$str22 Y
+22Z [
ex22\ ^
.22^ _
Message22_ f
,22f g
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
}99 	
}:: 
};; ∂
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardDetail\GetCardDetailCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardDetail, 9
{ 
public		 

class		 &
GetCardDetailCommandResult		 +
{

 
public 
ServiceResult 
< *
GetCardDetailCommandResultItem ;
>; <
ResultObject= I
{J K
getL O
;O P
setQ T
;T U
}V W
} 
public 

class *
GetCardDetailCommandResultItem /
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ç
^C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\GetCardTasks\GetCardTasksCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
GetCardTasks, 8
{ 
class 	
GetCardTasksCommand
 
{ 
} 
} î

VC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\MoveCard\MoveCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
MoveCard, 4
{ 
public 

sealed 
class 
MoveCardCommand '
:( )
IRequest* 2
<2 3!
MoveCardCommandResult3 H
>H I
{ 
public 
MoveCardCommand 
( 
)  
{ 	
}

 	
public 
MoveCardCommand 
( 
string %
cardId& ,
,, -
string. 4

swimLaneId5 ?
)? @
{ 	
CardId 
= 
cardId 
; 

SwimLaneId 
= 

swimLaneId #
;# $
} 	
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ä!
]C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\MoveCard\MoveCardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Cards

& +
.

+ ,
MoveCard

, 4
{ 
public 

class "
MoveCardCommandHandler '
:( )
IRequestHandler* 9
<9 :
MoveCardCommand: I
,I J!
MoveCardCommandResultK `
>` a
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public "
MoveCardCommandHandler %
(% &
ICardRepository& 5
cardRepository6 D
)D E
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< !
MoveCardCommandResult /
>/ 0
Handle1 7
(7 8
MoveCardCommand8 G
requestH O
,O P
CancellationTokenQ b
cancellationTokenc t
)t u
{ 	!
MoveCardCommandResult !
result" (
=) *
new+ .!
MoveCardCommandResult/ D
(D E
)E F
;F G
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9%
MoveCardCommandResultItem9 R
>R S
>S T
(T U
)U V
;V W
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0%
MoveCardCommandResultItem0 I
>I J
(J K
)K L
;L M
try   
{!! 
Card"" 
card"" 
="" 
_cardRepository"" +
.""+ ,
Get"", /
(""/ 0
p""0 1
=>""2 4
p""5 6
.""6 7
CardId""7 =
==""> @
request""A H
.""H I
CardId""I O
)""O P
;""P Q
card## 
.## 

SwimLaneId## 
=##  !
request##" )
.##) *

SwimLaneId##* 4
;##4 5
_cardRepository$$ 
.$$  
Update$$  &
($$& '
card$$' +
)$$+ ,
;$$, -
result.. 
... 
ResultObject.. #
...# $
Success..$ +
=.., -
true... 2
;..2 3
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
result22 
.22 
ResultObject22 #
.22# $
ServiceMessageList22$ 6
.226 7
Add227 :
(22: ;
new22; >
ServiceMessage22? M
(22M N
)22N O
{33 
ServiceMessageType44 &
=44' (
eServiceMessageType44) <
.44< =
Error44= B
,44B C
UserFriendlyText55 $
=55% &
$str55' 9
,559 :
LogText66 
=66 
$str66 W
+66X Y
ex66Z \
.66\ ]
Message66] d
,66d e
SystemException77 #
=77$ %
ex77& (
}88 
)88 
;88 
}99 
return;; 
result;; 
;;; 
}== 	
}?? 
}AA è
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\MoveCard\MoveCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
MoveCard, 4
{ 
public 

class !
MoveCardCommandResult &
{ 
public		 
ServiceResult		 
<		 
List		 !
<		! "%
MoveCardCommandResultItem		" ;
>		; <
>		< =
ResultObject		> J
{		K L
get		M P
;		P Q
set		R U
;		U V
}		W X
} 
public 

class %
MoveCardCommandResultItem *
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ï
XC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\MoveCard\MoveCardValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,
MoveCard, 4
{ 
public 

class 
MoveCardValidator "
{ 
} 
} ã

ZC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
public 

class 
UpdateCardCommand "
:# $
IRequest% -
<- .#
UpdateCardCommandResult. E
>E F
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
} ö(
aC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
Cards

& +
.

+ ,

UpdateCard

, 6
{ 
public 

sealed 
class $
UpdateCardCommandHandler 0
:1 2
IRequestHandler3 B
<B C
UpdateCardCommandC T
,T U#
UpdateCardCommandResultV m
>m n
{ 
private 
readonly 
ICardRepository (
_cardRepository) 8
;8 9
public $
UpdateCardCommandHandler '
(' (
ICardRepository( 7
cardRepository8 F
)F G
{ 	
_cardRepository 
= 
cardRepository ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
cardRepositoryW e
)e f
)f g
;g h
} 	
public 
async 
Task 
< #
UpdateCardCommandResult 1
>1 2
Handle3 9
(9 :
UpdateCardCommand: K
requestL S
,S T
CancellationTokenU f
cancellationTokeng x
)x y
{ 	#
UpdateCardCommandResult #
result$ *
=+ ,
new- 0#
UpdateCardCommandResult1 H
(H I
)I J
;J K
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4'
UpdateCardCommandResultItem4 O
>O P
(P Q
)Q R
;R S
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *'
UpdateCardCommandResultItem+ F
(F G
)G H
;H I
try 
{ 
Card 
card 
= 
new 
Card  $
($ %
)% &
;& '
card   
=   
_cardRepository   &
.  & '
Get  ' *
(  * +
x  + ,
=>  - /
x  0 1
.  1 2
CardId  2 8
==  9 ;
request  < C
.  C D
CardId  D J
&&  K M
x  N O
.  O P
BoardId  P W
==  X Z
request  [ b
.  b c
BoardId  c j
&&  k m
x  n o
.  o p

SwimLaneId  p z
==  { }
request	  ~ Ö
.
  Ö Ü

SwimLaneId
  Ü ê
)
  ê ë
;
  ë í
card!! 
.!! 
BoardId!! 
=!! 
request!! &
.!!& '
BoardId!!' .
;!!. /
card"" 
."" 

SwimLaneId"" 
=""  !
request""" )
."") *

SwimLaneId""* 4
;""4 5
card## 
.## 
CardId## 
=## 
request## %
.##% &
CardId##& ,
;##, -
card$$ 
.$$ 
Name$$ 
=$$ 
request$$ #
.$$# $
Name$$$ (
;$$( )
card%% 
.%% 
Description%%  
=%%! "
request%%# *
.%%* +
Description%%+ 6
;%%6 7
_cardRepository&& 
.&&  
Update&&  &
(&&& '
card&&' +
)&&+ ,
;&&, -
result** 
.** 
ResultObject** #
.**# $
Success**$ +
=**, -
true**. 2
;**2 3
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
result.. 
... 
ResultObject.. #
...# $
ServiceMessageList..$ 6
...6 7
Add..7 :
(..: ;
new..; >
ServiceMessage..? M
(..M N
)..N O
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
$str22 W
+22X Y
ex22Z \
.22\ ]
Message22] d
,22d e
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
}88 	
}99 
}:: Î

`C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
public 

class #
UpdateCardCommandResult (
{ 
public 
ServiceResult 
< '
UpdateCardCommandResultItem 8
>8 9
ResultObject: F
{G H
getI L
;L M
setN Q
;Q R
}S T
} 
public

 

class

 '
UpdateCardCommandResultItem

 ,
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} â
\C:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\Cards\UpdateCard\UpdateCardValidator.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
Cards& +
.+ ,

UpdateCard, 6
{ 
class 	
UpdateCardValidator
 
{ 
} 
} Ó
fC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
CreateSwimlane0 >
{ 
public 

class !
CreateSwimlaneCommand &
:' (
IRequest) 1
<1 2'
CreateSwimlaneCommandResult2 M
>M N
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
}		- .
}

 
} ﬁ%
mC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
	SwimLanes

& /
.

/ 0
CreateSwimlane

0 >
{ 
public 

sealed 
class (
CreateSwimlaneCommandHandler 4
:5 6
IRequestHandler7 F
<F G!
CreateSwimlaneCommandG \
,\ ]'
CreateSwimlaneCommandResult^ y
>y z
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
public (
CreateSwimlaneCommandHandler +
(+ ,
ISwimLaneRepository 
swimLaneRepository 1
)1 2
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
swimLaneRepository_ q
)q r
)r s
;s t
} 	
public 
async 
Task 
< '
CreateSwimlaneCommandResult 5
>5 6
Handle7 =
(= >!
CreateSwimlaneCommand> S
requestT [
,[ \
CancellationToken] n
cancellationToken	o Ä
)
Ä Å
{ 	'
CreateSwimlaneCommandResult '
result( .
=/ 0
new1 4'
CreateSwimlaneCommandResult5 P
(P Q
)Q R
;R S
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4+
CreateSwimlaneCommandResultItem4 S
>S T
(T U
)U V
;V W
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *+
CreateSwimlaneCommandResultItem+ J
(J K
)K L
;L M
try 
{ 
SwimLane   
swimLane   !
=  " #
_swimLaneRepository  $ 7
.  7 8
Add  8 ;
(  ; <
new  < ?
SwimLane  @ H
(  H I
)  I J
{  K L
BoardId  M T
=  U V
request  W ^
.  ^ _
BoardId  _ f
,  f g
Name  h l
=  m n
request  o v
.  v w
Name  w {
}  | }
)  } ~
;  ~ 
result!! 
.!! 
ResultObject!! #
.!!# $
Data!!$ (
.!!( )
BoardId!!) 0
=!!1 2
swimLane!!3 ;
.!!; <
BoardId!!< C
;!!C D
result"" 
."" 
ResultObject"" #
.""# $
Data""$ (
.""( )
Name"") -
="". /
swimLane""0 8
.""8 9
Name""9 =
;""= >
result## 
.## 
ResultObject## #
.### $
Data##$ (
.##( )

SwimLaneId##) 3
=##4 5
swimLane##6 >
.##> ?

SwimLaneId##? I
;##I J
result%% 
.%% 
ResultObject%% #
.%%# $
Success%%$ +
=%%, -
true%%. 2
;%%2 3
}&& 
catch'' 
('' 
	Exception'' 
ex'' 
)''  
{(( 
result)) 
.)) 
ResultObject)) #
.))# $
ServiceMessageList))$ 6
.))6 7
Add))7 :
()): ;
new)); >
ServiceMessage))? M
())M N
)))N O
{** 
ServiceMessageType++ &
=++' (
eServiceMessageType++) <
.++< =
Error++= B
,++B C
UserFriendlyText,, $
=,,% &
$str,,' 9
,,,9 :
LogText-- 
=-- 
$str-- I
+--J K
ex--L N
.--N O
Message--O V
+--W X
$str--Y k
+--l m
ex--n p
.--p q
InnerException--q 
}.. 
).. 
;.. 
}// 
return22 
result22 
;22 
}44 	
}55 
}77 ã
lC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\CreateSwimlane\CreateSwimlaneCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
CreateSwimlane0 >
{ 
public 

class '
CreateSwimlaneCommandResult ,
{ 
public 
ServiceResult 
< +
CreateSwimlaneCommandResultItem <
>< =
ResultObject> J
{K L
getM P
;P Q
setR U
;U V
}W X
} 
public

 

class

 +
CreateSwimlaneCommandResultItem

 0
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} „	
jC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimLaneCards\GetSwimLaneCardsCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimLaneCards0 @
{ 
public 

sealed 
class #
GetSwimLaneCardsCommand /
:0 1
IRequest2 :
<: ;)
GetSwimLaneCardsCommandResult; X
>X Y
{ 
public #
GetSwimLaneCardsCommand &
(& '
string' -
boardId. 5
,5 6
string7 =

swimLaneId> H
)H I
{ 	
BoardId		 
=		 
boardId		 
;		 

SwimLaneId

 
=

 

swimLaneId

 #
;

# $
} 	
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ü'
qC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimLaneCards\GetSwimLaneCardsCommandHandler.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimLaneCards0 @
{ 
public 

class *
GetSwimLaneCardsCommandHandler /
:0 1
IRequestHandler2 A
<A B#
GetSwimLaneCardsCommandB Y
,Y Z)
GetSwimLaneCardsCommandResult[ x
>x y
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
public *
GetSwimLaneCardsCommandHandler -
(- .
ISwimLaneRepository. A
swimLaneRepositoryB T
)T U
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
swimLaneRepository_ q
)q r
)r s
;s t
} 	
public 
async 
Task 
< )
GetSwimLaneCardsCommandResult 7
>7 8
Handle9 ?
(? @#
GetSwimLaneCardsCommand@ W
requestX _
,_ `
CancellationToken 
cancellationToken /
)/ 0
{ 	)
GetSwimLaneCardsCommandResult )
result* 0
=1 2
new3 6)
GetSwimLaneCardsCommandResult7 T
(T U
)U V
;V W
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9-
!GetSwimLaneCardsCommandResultItem9 Z
>Z [
>[ \
(\ ]
)] ^
;^ _
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0-
!GetSwimLaneCardsCommandResultItem0 Q
>Q R
(R S
)S T
;T U
try 
{   
List!! 
<!! 
Card!! 
>!! 
cardList!! #
=!!$ %
_swimLaneRepository!!& 9
.!!9 :
GetSwimLaneCards!!: J
(!!J K
request!!K R
.!!R S

SwimLaneId!!S ]
)!!] ^
;!!^ _
result"" 
."" 
ResultObject"" #
.""# $
Data""$ (
="") *
cardList""+ 3
.""3 4
Select""4 :
("": ;
x""; <
=>""= ?
new""@ C-
!GetSwimLaneCardsCommandResultItem""D e
(""e f
)""f g
{## 
BoardId%% 
=%% 
x%% 
.%%  
BoardId%%  '
,%%' (

SwimLaneId&& 
=&&  
x&&! "
.&&" #

SwimLaneId&&# -
,&&- .
CardId'' 
='' 
x'' 
.'' 
CardId'' %
,''% &
Name(( 
=(( 
x(( 
.(( 
Name(( !
,((! "
Description)) 
=))  !
x))" #
.))# $
Description))$ /
}++ 
)++ 
.++ 
ToList++ 
(++ 
)++ 
;++ 
result-- 
.-- 
ResultObject-- #
.--# $
Success--$ +
=--, -
true--. 2
;--2 3
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
result11 
.11 
ResultObject11 #
.11# $
ServiceMessageList11$ 6
.116 7
Add117 :
(11: ;
new11; >
ServiceMessage11? M
(11M N
)11N O
{22 
ServiceMessageType33 &
=33' (
eServiceMessageType33) <
.33< =
Error33= B
,33B C
UserFriendlyText44 $
=44% &
$str44' 9
,449 :
LogText55 
=55 
$str55 Y
+55Z [
ex55\ ^
.55^ _
Message55_ f
,55f g
SystemException66 #
=66$ %
ex66& (
}77 
)77 
;77 
}88 
return:: 
result:: 
;:: 
}<< 	
}== 
}>> Á
pC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimLaneCards\GetSwimLaneCardsCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimLaneCards0 @
{ 
public 

class )
GetSwimLaneCardsCommandResult .
{ 
public 
ServiceResult 
< 
List !
<! "-
!GetSwimLaneCardsCommandResultItem" C
>C D
>D E
ResultObjectF R
{S T
getU X
;X Y
setZ ]
;] ^
}_ `
}		 
public 

class -
!GetSwimLaneCardsCommandResultItem 2
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
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
}  
lC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimlaneDetail\GetSwimlaneDetailCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimlaneDetail0 A
{ 
public 

class $
GetSwimlaneDetailCommand )
:* +
IRequest, 4
<4 5*
GetSwimlaneDetailCommandResult5 S
>S T
{ 
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
}		 º&
sC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimlaneDetail\GetSwimlaneDetailCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
	SwimLanes

& /
.

/ 0
GetSwimlaneDetail

0 A
{ 
public 

class +
GetSwimlaneDetailCommandHandler 0
:1 2
IRequestHandler3 B
<B C$
GetSwimlaneDetailCommandC [
,[ \*
GetSwimlaneDetailCommandResult] {
>{ |
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
public +
GetSwimlaneDetailCommandHandler .
(. /
ISwimLaneRepository/ B
swimLaneRepositoryC U
)U V
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
swimLaneRepository_ q
)q r
)r s
;s t
} 	
public 
async 
Task 
< *
GetSwimlaneDetailCommandResult 8
>8 9
Handle: @
(@ A$
GetSwimlaneDetailCommandA Y
requestZ a
,a b
CancellationTokenc t
cancellationToken	u Ü
)
Ü á
{ 	*
GetSwimlaneDetailCommandResult *
result+ 1
=2 3
new4 7*
GetSwimlaneDetailCommandResult8 V
(V W
)W X
;X Y
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4
List4 8
<8 9.
"GetSwimlaneDetailCommandResultItem9 [
>[ \
>\ ]
(] ^
)^ _
;_ `
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *
List+ /
</ 0.
"GetSwimlaneDetailCommandResultItem0 R
>R S
(S T
)T U
;U V
try 
{   
SwimLane!! 
swimLane!! !
=!!" #
_swimLaneRepository!!$ 7
.!!7 8
Get!!8 ;
(!!; <
x!!< =
=>!!> @
x!!A B
.!!B C

SwimLaneId!!C M
==!!N P
request!!Q X
.!!X Y

SwimLaneId!!Y c
)!!c d
;!!d e
result"" 
."" 
ResultObject"" #
.""# $
Data""$ (
[""( )
$num"") *
]""* +
.""+ ,
BoardId"", 3
=""4 5
swimLane""6 >
.""> ?
BoardId""? F
;""F G
result## 
.## 
ResultObject## #
.### $
Data##$ (
[##( )
$num##) *
]##* +
.##+ ,

SwimLaneId##, 6
=##7 8
swimLane##9 A
.##A B

SwimLaneId##B L
;##L M
result$$ 
.$$ 
ResultObject$$ #
.$$# $
Data$$$ (
[$$( )
$num$$) *
]$$* +
.$$+ ,
Name$$, 0
=$$1 2
swimLane$$3 ;
.$$; <
Name$$< @
;$$@ A
result'' 
.'' 
ResultObject'' #
.''# $
Success''$ +
='', -
true''. 2
;''2 3
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 
result++ 
.++ 
ResultObject++ #
.++# $
ServiceMessageList++$ 6
.++6 7
Add++7 :
(++: ;
new++; >
ServiceMessage++? M
(++M N
)++N O
{,, 
ServiceMessageType-- &
=--' (
eServiceMessageType--) <
.--< =
Error--= B
,--B C
UserFriendlyText.. $
=..% &
$str..' 9
,..9 :
LogText// 
=// 
$str// W
+//X Y
ex//Z \
.//\ ]
Message//] d
,//d e
SystemException00 #
=00$ %
ex00& (
}11 
)11 
;11 
}22 
return44 
result44 
;44 
}66 	
}77 
}88 Õ
rC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\GetSwimlaneDetail\GetSwimlaneDetailCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
GetSwimlaneDetail0 A
{ 
public 

class *
GetSwimlaneDetailCommandResult /
{ 
public 
ServiceResult 
< 
List !
<! ".
"GetSwimlaneDetailCommandResultItem" D
>D E
>E F
ResultObjectG S
{T U
getV Y
;Y Z
set[ ^
;^ _
}` a
}		 
public 

class .
"GetSwimlaneDetailCommandResultItem 3
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ˝
bC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\MoveSwimlane\MoveSwimlaneCommand.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
MoveSwimlane0 <
{ 
public 

class 
MoveSwimlaneCommand $
:% &
IRequest' /
</ 0%
MoveSwimlaneCommandResult0 I
>I J
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
}  
iC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\MoveSwimlane\MoveSwimlaneCommandHandler.cs
	namespace

 	
	KanbanApp


 
.

 
Services

 
.

 
UseCases

 %
.

% &
	SwimLanes

& /
.

/ 0
MoveSwimlane

0 <
{ 
public 

sealed 
class &
MoveSwimlaneCommandHandler 2
:3 4
IRequestHandler5 D
<D E
MoveSwimlaneCommandE X
,X Y%
MoveSwimlaneCommandResultZ s
>s t
{ 
private 
readonly 
ISwimLaneRepository ,
_swimLaneRepository- @
;@ A
public &
MoveSwimlaneCommandHandler )
() *
ISwimLaneRepository 
swimLaneRepository 1
)1 2
{ 	
_swimLaneRepository 
=  !
swimLaneRepository" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
swimLaneRepository_ q
)q r
)r s
;s t
} 	
public 
async 
Task 
< %
MoveSwimlaneCommandResult 3
>3 4
Handle5 ;
(; <
MoveSwimlaneCommand< O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	%
MoveSwimlaneCommandResult %
result& ,
=- .
new/ 2%
MoveSwimlaneCommandResult3 L
(L M
)M N
;N O
result 
. 
ResultObject 
=  !
new" %
ServiceResult& 3
<3 4)
MoveSwimlaneCommandResultItem4 Q
>Q R
(R S
)S T
;T U
result 
. 
ResultObject 
.  
Success  '
=( )
false* /
;/ 0
result 
. 
ResultObject 
.  
ServiceMessageList  2
=3 4
new5 8
List9 =
<= >
ServiceMessage> L
>L M
(M N
)N O
;O P
result 
. 
ResultObject 
.  
Data  $
=% &
new' *)
MoveSwimlaneCommandResultItem+ H
(H I
)I J
;J K
try   
{!! 
_swimLaneRepository"" #
.""# $
Update""$ *
(""* +
new""+ .
SwimLane""/ 7
(""7 8
)""8 9
{"": ;
BoardId""< C
=""D E
request""F M
.""M N
BoardId""N U
,""U V
Name""W [
=""\ ]
request""^ e
.""e f
Name""f j
,""j k
Position""l t
=""u v
request""w ~
.""~ 
Position	"" á
}
""à â
)
""â ä
;
""ä ã
result$$ 
.$$ 
ResultObject$$ #
.$$# $
Success$$$ +
=$$, -
true$$. 2
;$$2 3
}%% 
catch&& 
(&& 
	Exception&& 
ex&& 
)&&  
{'' 
result(( 
.(( 
ResultObject(( #
.((# $
ServiceMessageList(($ 6
.((6 7
Add((7 :
(((: ;
new((; >
ServiceMessage((? M
(((M N
)((N O
{)) 
ServiceMessageType** &
=**' (
eServiceMessageType**) <
.**< =
Error**= B
,**B C
UserFriendlyText++ $
=++% &
$str++' 9
,++9 :
LogText,, 
=,, 
$str,, I
+,,J K
ex,,L N
.,,N O
Message,,O V
+,,W X
$str,,Y k
+,,l m
ex,,n p
.,,p q
InnerException,,q 
}-- 
)-- 
;-- 
}.. 
return11 
result11 
;11 
}33 	
}44 
}55 ˇ

hC:\TFSProjects\KanbanApp\KanbanApp.Services\UseCases\SwimLanes\MoveSwimlane\MoveSwimlaneCommandResult.cs
	namespace 	
	KanbanApp
 
. 
Services 
. 
UseCases %
.% &
	SwimLanes& /
./ 0
MoveSwimlane0 <
{ 
public 

class %
MoveSwimlaneCommandResult *
{ 
public 
ServiceResult 
< )
MoveSwimlaneCommandResultItem :
>: ;
ResultObject< H
{I J
getK N
;N O
setP S
;S T
}U V
} 
public

 

class

 )
MoveSwimlaneCommandResultItem

 .
{ 
public 
string 
BoardId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

SwimLaneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Position 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 