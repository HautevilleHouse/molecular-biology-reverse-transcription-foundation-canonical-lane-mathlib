import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure RNaseHDomain where
  catalyticCenter : Type u
  mgIonBinding : Prop
  rnaHydrolysisActivity : Prop
  specificityForRnaDnaHybrid : Prop
  mgIonBindingTerm : mgIonBinding
  rnaHydrolysisActivityTerm : rnaHydrolysisActivity
  specificityForRnaDnaHybridTerm : specificityForRnaDnaHybrid

structure RNaseHEvidence (R : RNaseHDomain) where
  mgIonBindingClosed : R.mgIonBinding
  rnaHydrolysisActivityClosed : R.rnaHydrolysisActivity
  specificityForRnaDnaHybridClosed : R.specificityForRnaDnaHybrid

def RNaseHClosed (R : RNaseHDomain) : Prop :=
  R.mgIonBinding ∧ R.rnaHydrolysisActivity ∧ R.specificityForRnaDnaHybrid

theorem rnase_h_closed_from_evidence
    (R : RNaseHDomain) (E : RNaseHEvidence R) : RNaseHClosed R := by
  exact And.intro E.mgIonBindingClosed (And.intro E.rnaHydrolysisActivityClosed E.specificityForRnaDnaHybridClosed)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse