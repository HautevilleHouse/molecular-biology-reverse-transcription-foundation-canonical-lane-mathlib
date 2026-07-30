import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ReverseTranscriptionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse