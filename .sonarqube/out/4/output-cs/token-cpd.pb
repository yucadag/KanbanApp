­
[C:\TFSProjects\KanbanApp\KanbanApp.BackgroundIntegration\Jobs\ExchangeMailIntegrationJob.cs
	namespace 	
	KanbanApp
 
. !
BackgroundIntegration )
.) *
Jobs* .
{ 
public 

class &
ExchangeMailIntegrationJob +
:, -
IJob. 2
{ 
public 
void 
Execute 
( 
) 
{		 	
const

 
string

 
serviceMessage

 '
=

( )
$str

* V
;

V W
var 
formattedMessage  
=! "
$"# %
[% &
{& '
DateTime' /
./ 0
Now0 3
:3 4
G4 5
}5 6
] : 6 :
{: ;
serviceMessage; I
}I J
"J K
;K L
Console 
. 
	WriteLine 
( 
formattedMessage .
). /
;/ 0
} 	
} 
} Î
CC:\TFSProjects\KanbanApp\KanbanApp.BackgroundIntegration\Program.cs
	namespace 	
	KanbanApp
 
. !
BackgroundIntegration )
{ 
class 	
Program
 
{ 
static 
async 
Task 
Main 
( 
string %
[% &
]& '
args( ,
), -
{ 	
} 	
} 
} þ
fC:\TFSProjects\KanbanApp\KanbanApp.BackgroundIntegration\Registries\ExchangeMailIntegrationRegistry.cs
	namespace 	
	KanbanApp
 
. !
BackgroundIntegration )
.) *

Registries* 4
{ 
public 

class +
ExchangeMailIntegrationRegistry 0
:1 2
Registry3 ;
{ 
public +
ExchangeMailIntegrationRegistry .
(. /
)/ 0
{		 	
Schedule

 
<

 &
ExchangeMailIntegrationJob

 /
>

/ 0
(

0 1
)

1 2
.

2 3
ToRunNow

3 ;
(

; <
)

< =
. 
AndEvery 
( 
$num 
) 
. 
Seconds $
($ %
)% &
;& '
} 	
} 
} 