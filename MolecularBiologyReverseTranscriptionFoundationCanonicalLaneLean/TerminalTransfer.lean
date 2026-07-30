import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.ElongationKinetics
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.CDNAFirstStrand

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure TerminalTransferPackage {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} (C : CDNAFirstStrandPackage K) where
  firstStrandSynthesisComplete : Prop
  RNaseHDegradation : Prop
  strandTransferInitiated : Prop
  secondStrandPriming : Prop

structure TerminalTransferEvidence {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    (Tr : TerminalTransferPackage C) where
  firstStrandSynthesisCompleteClosed : Tr.firstStrandSynthesisComplete
  RNaseHDegradationClosed : Tr.RNaseHDegradation
  strandTransferInitiatedClosed : Tr.strandTransferInitiated
  secondStrandPrimingClosed : Tr.secondStrandPriming

def TerminalTransferClosed {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    (Tr : TerminalTransferPackage C) : Prop :=
  Tr.firstStrandSynthesisComplete ∧ Tr.RNaseHDegradation ∧ Tr.strandTransferInitiated ∧ Tr.secondStrandPriming

theorem terminal_transfer_closed_from_evidence
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    (Tr : TerminalTransferPackage C) (E : TerminalTransferEvidence Tr) :
    TerminalTransferClosed Tr := by
  exact And.intro E.firstStrandSynthesisCompleteClosed
    (And.intro E.RNaseHDegradationClosed
      (And.intro E.strandTransferInitiatedClosed E.secondStrandPrimingClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse