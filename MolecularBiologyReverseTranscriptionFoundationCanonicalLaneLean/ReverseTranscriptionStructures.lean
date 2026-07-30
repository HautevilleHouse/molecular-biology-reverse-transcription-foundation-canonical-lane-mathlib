import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionComplex where
  templateStrand : Type u
  primerBinding : Type v
  rnaseHActivity : Prop
  polymeraseActivity : Prop
  strandTransfer : Prop
  rnaseHActivityTerm : rnaseHActivity
  polymeraseActivityTerm : polymeraseActivity
  strandTransferTerm : strandTransfer

structure ReverseTranscriptionEvidence (C : ReverseTranscriptionComplex) where
  rnaseHActivityClosed : C.rnaseHActivity
  polymeraseActivityClosed : C.polymeraseActivity
  strandTransferClosed : C.strandTransfer

def ReverseTranscriptionClosed (C : ReverseTranscriptionComplex) : Prop :=
  C.rnaseHActivity ∧ C.polymeraseActivity ∧ C.strandTransfer

theorem reverse_transcription_closed_from_evidence
    (C : ReverseTranscriptionComplex) (E : ReverseTranscriptionEvidence C) :
    ReverseTranscriptionClosed C := by
  exact And.intro E.rnaseHActivityClosed (And.intro E.polymeraseActivityClosed E.strandTransferClosed)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse