import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure MutationSpectrumPackage where
  substitutionRate : ℝ
  insertionRate : ℝ
  deletionRate : ℝ
  frameshiftProbability : ℝ
  hypermutationHotspots : List String

structure MutationSpectrumEvidence (M : MutationSpectrumPackage) where
  substitutionRateClosed : M.substitutionRate ≥ 0
  insertionRateClosed : M.insertionRate ≥ 0
  deletionRateClosed : M.deletionRate ≥ 0
  frameshiftProbabilityClosed : 0 ≤ M.frameshiftProbability ∧ M.frameshiftProbability < 1
  hypermutationHotspotsClosed : M.hypermutationHotspots ≠ []

def MutationSpectrumClosed (M : MutationSpectrumPackage) : Prop :=
  M.substitutionRate ≥ 0 ∧ M.insertionRate ≥ 0 ∧ M.deletionRate ≥ 0 ∧
  (0 ≤ M.frameshiftProbability ∧ M.frameshiftProbability < 1) ∧
  M.hypermutationHotspots ≠ []

theorem mutation_spectrum_closed_from_evidence (M : MutationSpectrumPackage)
  (E : MutationSpectrumEvidence M) : MutationSpectrumClosed M := by
  refine And.intro E.substitutionRateClosed ?_
  refine And.intro E.insertionRateClosed ?_
  refine And.intro E.deletionRateClosed ?_
  refine And.intro E.frameshiftProbabilityClosed E.hypermutationHotspotsClosed

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse