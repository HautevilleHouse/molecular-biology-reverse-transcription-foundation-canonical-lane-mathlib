import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionBridge

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptaseKineticsPackage where
  enzymeConcentration : ℝ
  substrateConcentration : ℝ
  km : ℝ
  kcat : ℝ
  inhibitionConstant : ℝ
  temperature : ℝ
  ph : ℝ

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

structure KineticsEvidence where
  michaelisMentenSatisfied : Prop
  inhibitionModeled : Prop
  temperatureDependence : Prop
  phDependence : Prop
  evidence : michaelisMentenSatisfied ∧ inhibitionModeled ∧ temperatureDependence ∧ phDependence

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse
