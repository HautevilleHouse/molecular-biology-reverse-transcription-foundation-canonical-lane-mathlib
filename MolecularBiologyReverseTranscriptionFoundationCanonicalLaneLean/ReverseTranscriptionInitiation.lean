import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.AdmissibleClass
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.TemplateRNA
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.PrimerBinding

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionInitiationPackage (T : TemplateRNAPackage) (P : PrimerBindingPackage T) where
  templateBoundPrimer : Prop
  reverseTranscriptaseBound : Prop
  initiationComplexFormed : Prop
  startCodonAligned : Prop

structure ReverseTranscriptionInitiationEvidence {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    (I : ReverseTranscriptionInitiationPackage T P) where
  templateBoundPrimerClosed : I.templateBoundPrimer
  reverseTranscriptaseBoundClosed : I.reverseTranscriptaseBound
  initiationComplexFormedClosed : I.initiationComplexFormed
  startCodonAlignedClosed : I.startCodonAligned

def ReverseTranscriptionInitiationClosed {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    (I : ReverseTranscriptionInitiationPackage T P) : Prop :=
  I.templateBoundPrimer ∧ I.reverseTranscriptaseBound ∧ I.initiationComplexFormed ∧ I.startCodonAligned

theorem reverse_transcription_initiation_closed_from_evidence
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    (I : ReverseTranscriptionInitiationPackage T P) (E : ReverseTranscriptionInitiationEvidence I) :
    ReverseTranscriptionInitiationClosed I := by
  exact And.intro E.templateBoundPrimerClosed
    (And.intro E.reverseTranscriptaseBoundClosed
      (And.intro E.initiationComplexFormedClosed E.startCodonAlignedClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse