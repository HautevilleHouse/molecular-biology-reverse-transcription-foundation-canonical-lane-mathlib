import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ReverseTranscriptionInitiation
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.NucleotidePool

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ElongationKineticsPackage {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} (N : NucleotidePoolPackage) where
  nucleotideIncorporationRate : Prop
  processivityFactor : Prop
  RNaseHActivity : Prop
  templateSwitchingRate : Prop

structure ElongationKineticsEvidence {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    (K : ElongationKineticsPackage N) where
  nucleotideIncorporationRateClosed : K.nucleotideIncorporationRate
  processivityFactorClosed : K.processivityFactor
  RNaseHActivityClosed : K.RNaseHActivity
  templateSwitchingRateClosed : K.templateSwitchingRate

def ElongationKineticsClosed {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    (K : ElongationKineticsPackage N) : Prop :=
  K.nucleotideIncorporationRate ∧ K.processivityFactor ∧ K.RNaseHActivity ∧ K.templateSwitchingRate

theorem elongation_kinetics_closed_from_evidence
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    (K : ElongationKineticsPackage N) (E : ElongationKineticsEvidence K) :
    ElongationKineticsClosed K := by
  exact And.intro E.nucleotideIncorporationRateClosed
    (And.intro E.processivityFactorClosed
      (And.intro E.RNaseHActivityClosed E.templateSwitchingRateClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse