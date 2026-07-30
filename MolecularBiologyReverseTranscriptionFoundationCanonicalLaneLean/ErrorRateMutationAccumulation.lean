import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ErrorRateMutationPackage where
  reverseTranscriptaseFidelity : Prop
  nucleotideMisincorporationRate : Prop
  templateSwitchingRate : Prop
  recombinationFrequency : Prop
  hypermutationMechanisms : Prop
  reverseTranscriptaseFidelityTerm : reverseTranscriptaseFidelity
  nucleotideMisincorporationRateTerm : nucleotideMisincorporationRate
  templateSwitchingRateTerm : templateSwitchingRate
  recombinationFrequencyTerm : recombinationFrequency
  hypermutationMechanismsTerm : hypermutationMechanisms

structure ErrorRateMutationEvidence (P : ErrorRateMutationPackage) where
  reverseTranscriptaseFidelityClosed : P.reverseTranscriptaseFidelity
  nucleotideMisincorporationRateClosed : P.nucleotideMisincorporationRate
  templateSwitchingRateClosed : P.templateSwitchingRate
  recombinationFrequencyClosed : P.recombinationFrequency
  hypermutationMechanismsClosed : P.hypermutationMechanisms

def ErrorRateMutationClosed (P : ErrorRateMutationPackage) : Prop :=
  P.reverseTranscriptaseFidelity ∧ P.nucleotideMisincorporationRate ∧ P.templateSwitchingRate ∧ P.recombinationFrequency ∧ P.hypermutationMechanisms

theorem error_rate_mutation_closed_from_evidence
    (P : ErrorRateMutationPackage) (E : ErrorRateMutationEvidence P) :
    ErrorRateMutationClosed P := by
  exact And.intro E.reverseTranscriptaseFidelityClosed
    (And.intro E.nucleotideMisincorporationRateClosed
      (And.intro E.templateSwitchingRateClosed
        (And.intro E.recombinationFrequencyClosed E.hypermutationMechanismsClosed)))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse