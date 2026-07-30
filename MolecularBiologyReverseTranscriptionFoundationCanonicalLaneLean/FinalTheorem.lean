import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptaseKinetics

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

def ConstrainedReverseTranscriptionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reverse_transcription_endgame (A : AdmissibleClass) : ConstrainedReverseTranscriptionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse
