import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptaseEnzyme where
  rnapol : Type
  rnaseH : Type
  dnaPolymeraseActivity : Prop
  templateSwitchingCapability : Prop
  rnaseHActivity : Prop
  processivity : Prop
  fidelity : Prop

structure ReverseTranscriptionKinetics where
  dNTPConcentration : ℝ
  templateConcentration : ℝ
  primerConcentration : ℝ
  pH : ℝ
  temperature : ℝ
  kmValue : ℝ
  vmax : ℝ
  reactionRate : Prop

structure ReverseTranscriptaseEvidence (E : ReverseTranscriptaseEnzyme) (K : ReverseTranscriptionKinetics) where
  rnaseHActivityClosed : E.rnaseHActivity
  dnaPolymeraseActivityClosed : E.dnaPolymeraseActivity
  processivityClosed : E.processivity
  reactionRateClosed : K.reactionRate
  kmValuePositive : K.kmValue > 0
  vmaxPositive : K.vmax > 0

def EnzymeKineticsClosed (E : ReverseTranscriptaseEnzyme) (K : ReverseTranscriptionKinetics) : Prop :=
  E.dnaPolymeraseActivity ∧ E.rnaseHActivity ∧ E.processivity ∧ K.reactionRate ∧ K.kmValue > 0 ∧ K.vmax > 0

theorem enzyme_kinetics_closed_from_evidence (E : ReverseTranscriptaseEnzyme) (K : ReverseTranscriptionKinetics) (Ev : ReverseTranscriptaseEvidence E K) : EnzymeKineticsClosed E K := by
  exact And.intro Ev.dnaPolymeraseActivityClosed (And.intro Ev.rnaseHActivityClosed (And.intro Ev.processivityClosed (And.intro Ev.reactionRateClosed (And.intro Ev.kmValuePositive Ev.vmaxPositive))))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse