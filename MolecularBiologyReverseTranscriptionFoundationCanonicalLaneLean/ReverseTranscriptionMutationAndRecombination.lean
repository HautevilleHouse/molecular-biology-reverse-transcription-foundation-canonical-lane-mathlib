import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure MutationRates where
  transitionRate : ℝ
  transversionRate : ℝ
  insertionRate : ℝ
  deletionRate : ℝ
  errorRatePerBase : ℝ

structure RecombinationMechanism where
  templateSwitchingFrequency : ℝ
  homologousRecombination : Prop
  nonHomologousEndJoining : Prop
  recombinationHotspots : List ℕ

structure RetroviralDiversity (M : MutationRates) (R : RecombinationMechanism) where
  mutationRatePositive : M.errorRatePerBase > 0
  recombinationFrequencyPositive : R.templateSwitchingFrequency > 0
  diversityGenerated : Prop

structure DiversityEvidence (M : MutationRates) (R : RecombinationMechanism) (D : RetroviralDiversity M R) where
  mutationRatePositiveClosed : D.mutationRatePositive
  recombinationFrequencyPositiveClosed : D.recombinationFrequencyPositive
  diversityGeneratedClosed : D.diversityGenerated

def DiversityClosed (M : MutationRates) (R : RecombinationMechanism) (D : RetroviralDiversity M R) : Prop :=
  D.mutationRatePositive ∧ D.recombinationFrequencyPositive ∧ D.diversityGenerated

theorem diversity_closed_from_evidence (M : MutationRates) (R : RecombinationMechanism) (D : RetroviralDiversity M R) (E : DiversityEvidence M R D) : DiversityClosed M R D := by
  exact And.intro E.mutationRatePositiveClosed (And.intro E.recombinationFrequencyPositiveClosed E.diversityGeneratedClosed)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse