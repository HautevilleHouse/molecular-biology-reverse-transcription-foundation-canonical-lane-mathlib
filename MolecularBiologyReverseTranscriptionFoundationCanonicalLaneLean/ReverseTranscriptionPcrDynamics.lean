import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionPcrDynamics where
  denaturationEfficiency : Prop
  primerAnnealingKinetics : Prop
  elongationRateProp : Prop
  cycleThreshold : Prop
  amplificationEfficiency : Prop

structure ReverseTranscriptionPcrDynamicsEvidence (P : ReverseTranscriptionPcrDynamics) where
  denaturationEfficiencyClosed : P.denaturationEfficiency
  primerAnnealingKineticsClosed : P.primerAnnealingKinetics
  elongationRatePropClosed : P.elongationRateProp
  cycleThresholdClosed : P.cycleThreshold
  amplificationEfficiencyClosed : P.amplificationEfficiency

def ReverseTranscriptionPcrDynamicsClosed (P : ReverseTranscriptionPcrDynamics) : Prop :=
  P.denaturationEfficiency ∧ P.primerAnnealingKinetics ∧
  P.elongationRateProp ∧ P.cycleThreshold ∧ P.amplificationEfficiency

theorem reverse_transcription_pcr_dynamics_closed_from_evidence
    (P : ReverseTranscriptionPcrDynamics)
    (E : ReverseTranscriptionPcrDynamicsEvidence P) :
    ReverseTranscriptionPcrDynamicsClosed P := by
  exact And.intro E.denaturationEfficiencyClosed
    (And.intro E.primerAnnealingKineticsClosed
      (And.intro E.elongationRatePropClosed
        (And.intro E.cycleThresholdClosed E.amplificationEfficiencyClosed)))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse