import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionObject where
  template : Type
  reverseTranscriptase : Type
  primerBindingSite : Prop
  rnaDependentDnaPolymeraseActivity : Prop
  strandDisplacementActivity : Prop
  processivity : Prop

structure ReverseTranscriptionAdmittedObject where
  object : ReverseTranscriptionObject
  reverseTranscriptionInitiated : Prop
  cdnaSynthesized : Prop
  conclusion : cdnaSynthesized

def ReverseTranscriptionWitnessClosed (O : ReverseTranscriptionAdmittedObject) : Prop :=
  O.cdnaSynthesized

structure AdmissibleClass where
  object : ReverseTranscriptionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse
