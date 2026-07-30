import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionEnzymeKinetics
import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionInitiationElongationTermination
import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionMutationAndRecombination
import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionInhibitorTherapy

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure MeltingTempAdmissibleClass (A : AdmissibleClass) where
  kineticEvidence : ∀ (E : ReverseTranscriptaseEnzyme) (K : ReverseTranscriptionKinetics), EnzymeKineticsClosed E K
  cycleEvidence : ∀ (C : ReverseTranscriptionCycle), CycleClosed C
  diversityEvidence : ∀ (M : MutationRates) (R : RecombinationMechanism) (D : RetroviralDiversity M R), DiversityClosed M R D
  therapyEvidence : ∀ (T : CombinationTherapy), TherapyClosed T
  bridgeCondition : A.endpointSatisfied
  gateCondition : A.remainderRecorded

def ConstrainedRTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rt_endgame (A : AdmissibleClass) : ConstrainedRTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse