import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionProtocolOptimization where
  primerDesignEfficiency : Prop
  temperatureGradientOptimization : Prop
  mgConcentrationTitration : Prop
  additiveEnhancement : Prop
  multiplexReactionCapability : Prop

structure ReverseTranscriptionProtocolOptimizationEvidence
    (P : ReverseTranscriptionProtocolOptimization) where
  primerDesignEfficiencyClosed : P.primerDesignEfficiency
  temperatureGradientOptimizationClosed : P.temperatureGradientOptimization
  mgConcentrationTitrationClosed : P.mgConcentrationTitration
  additiveEnhancementClosed : P.additiveEnhancement
  multiplexReactionCapabilityClosed : P.multiplexReactionCapability

def ReverseTranscriptionProtocolOptimizationClosed
    (P : ReverseTranscriptionProtocolOptimization) : Prop :=
  P.primerDesignEfficiency ∧ P.temperatureGradientOptimization ∧
  P.mgConcentrationTitration ∧ P.additiveEnhancement ∧ P.multiplexReactionCapability

theorem reverse_transcription_protocol_optimization_closed_from_evidence
    (P : ReverseTranscriptionProtocolOptimization)
    (E : ReverseTranscriptionProtocolOptimizationEvidence P) :
    ReverseTranscriptionProtocolOptimizationClosed P := by
  exact And.intro E.primerDesignEfficiencyClosed
    (And.intro E.temperatureGradientOptimizationClosed
      (And.intro E.mgConcentrationTitrationClosed
        (And.intro E.additiveEnhancementClosed E.multiplexReactionCapabilityClosed)))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse