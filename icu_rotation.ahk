; TODO: need? auto-inserted top stuff; not sure what it all does
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

:*R:u\::alex.crist
:*R:p\::314Extravasated

:*R:mkh::mcg/kg/hr
:*R:mch::mcg/hr
:*R:mcm::mcg/min
:*R:mkm::mcg/kg/min

:*R:fent::fentanyl
:*R:prop::propofol
:*R:Levo::Levophed
:*R:phen::phenylephrine
:*R:Prec::Precedex

:*R:ventset\::Mode _`; Rate _, TV _, FiO2 _, PEEP _
:*R:abg\::pH _, pCO2 _, pO2 _, bicarb _

:*R:icureqs\::
(
* Ventilation requirement: 
* Sedation requirement: 
* Paralytic requirement: 
* Pressor requirement: 
)

:*R:COVID plan\::
(
[* Received remdesivir]
[* Recieved CCP x ]
- continue CBC, CMP qAM
- continue CXR, ABG qAM
- trend COVID inflammatory markers: CRP, LDH, Ferritin, D-dimer
[- continue dexamethasone 6mg | Solu-Medrol, Zn, Vitamin C, D
[- continue remdesivir]
[- continue CCP]
[- continue AC: Heparin gtt]
[- prone as able]
)

;TODO: make bold
:*R:events\::Events of the last 24 hours: