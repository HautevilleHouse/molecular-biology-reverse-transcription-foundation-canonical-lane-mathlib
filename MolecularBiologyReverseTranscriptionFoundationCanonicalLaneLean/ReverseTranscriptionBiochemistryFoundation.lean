import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionBiochemistryFoundation where
  rnaTemplate : Type u
  pcrEnzymes : Type v
  nucleotidePool : Type w
  reverseTranscriptaseActive : Prop
  templateBindingEfficiency : Prop
  cdnaSynthesisInitiated : Prop
  strandDisplacementCapability : Prop

structure ReverseTranscriptionBiochemistryEvidence (R : ReverseTranscriptionBiochemistryFoundation) where
  reverseTranscriptaseActiveClosed : R.reverseTranscriptaseActive
  templateBindingEfficiencyClosed : R.templateBindingEfficiency
  cdnaSynthesisInitiatedClosed : R.cdnaSynthesisInitiated
  strandDisplacementCapabilityClosed : R.strandDisplacementCapability

def ReverseTranscriptionBiochemistryClosed (R : ReverseTranscriptionBiochemistryFoundation) : Prop :=
  R.reverseTranscriptaseActive ∧ R.templateBindingEfficiency ∧
  R.cdnaSynthesisInitiated ∧ R.strandDisplacementCapability

theorem reverse_transcription_biochemistry_closed_from_evidence
    (R : ReverseTranscriptionBiochemistryFoundation)
    (E : ReverseTranscriptionBiochemistryEvidence R) :
    ReverseTranscriptionBiochemistryClosed R := by
  exact And.intro E.reverseTranscriptaseActiveClosed
    (And.intro E.templateBindingEfficiencyClosed
      (And.intro E.cdnaSynthesisInitiatedClosed
        E.strandDisplacementCapabilityClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse