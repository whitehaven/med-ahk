:*R:ros14\::
    (
ROS
    Const: 
    Eyes: 
    ENT: 
    CV: 
    Resp: 
    GI: 
    GU: 
    MSK: 
    Integ: 
    Neuro: 
    Psych: 
    Endo: 
    Hemat/Lymph: 
    Aller/Immu: 
    )

:*R:.ros14_flat\::
    (
ROS
Const: 
Eyes: 
ENT: 
CV: 
Resp: 
GI: 
GU: 
MSK: 
Integ: 
Neuro: 
Psych: 
Endo: 
Hemat/Lymph: 
Aller/Immu: 
    )

:*R:constsx\::
    (
    anorexia, fevers, fatigue, malaise, night sweats, weight loss
    )

:*R:ros-GI\::
    (
    No abdominal pain, bloating, or masses. No nausea, vomiting, diarrhea, or constipation. No melena or hematochezia.
    )

:*R:icureqs\::
(
* Ventilation requirement: 
* Sedation requirement: 
* Paralytic requirement: 
* Pressor requirement: 
)

:*R:ventset\::Mode _`; Rate _, TV _, FiO2 _, PEEP _
:*R:abg\::pH _, pCO2 _, pO2 _, bicarb _

:*R:u\::alex.crist
:*R:p\::314Extravasated

:*R:mkh::mcg/kg/hr
:*R:mch::mcg/hr
:*R:mcm::mcg/min
:*R:mkm::mcg/kg/min

:*R:fent\::fentanyl
:*R:prop\::propofol
:*R:Levo\::Levophed
:*R:phen\::phenylephrine
:*R:Prec\::Precedex

:*R:ahrf\::acute hypoxemic respiratory failure

:*R:ct\::continue

:*R:phen\::phenylephrine
:*R:cr\::Creatinine
:*R:is\::interstitial
:*R:t2dm::type 2 DM
:*R:htn\::hypertension
:*R:pna\::pneumonia
:*R:afib\::atrial fibrillation
:*R:ppx\::prophylaxis
:*R:k\::potassium 
:*R:nc\::nasal cannula
:*R:y\::yesterday
:*R:ddx\::differential diagnosis

:*R:cad\::coronary artery disease
:*R:dka\::diabetic ketoacidosis
:*R:hagma\::high anion gap metabolic acidosis
:*R:nagma\::non-anion gap metabolic acidosis

:*R:2/2\::secondary to

:*R:CAP\::community-acquired pneumonia
:*R:cpm\::continue present management
:*R:ams\::altered mental status
:*R:aki\::acute kidney injury
:*R:ich\::intracranial hemorrhage
:*R:cpmado\::continue present management at direction of 
:*R:se\::status epilepticus
:*R:arf\::acute renal failure
:*R:ams\::altered mental status
:*R:ic\::intracranial
:*R:brbpr\::bright red blood per rectum
:*R:nvdc\::nausea, vomiting, diarrhea, constipation
:*R:rvr\::rapid ventricular response
:*R:amio\::amiodarone

:*R:ID\::Infectious Disease
:*R:cards\::Cardiology 
:*R:neph\::Nephrology
:*R:pmr\::PM&R
:*R:neur\::Neurology
:*R:nsurg\::Neurosurgery
:*R:gensurg\::General Surgery
:*R:pulm\::Pulmonology
:*R:heme/onc\::Hematology/Oncology

:*R:cocci\::Coccidioides
:*R:uti\::urinary tract infection
:*R:rr\::rapid response

:*R:wor\::worsening
:*R:imp\::improving
:*R:unc\::unchanged
:*R:new\::new onset
:*R:res\::resolved

:*R:m/l\::most likely

;TODO: make bold vs bold this line hotkey
:*R:events\::Events of the last 24 hours:

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
:*R:c19\::COVID-19