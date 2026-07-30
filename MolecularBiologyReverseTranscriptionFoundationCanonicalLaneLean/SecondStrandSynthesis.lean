import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.TerminalTransfer
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.DNAPolymerase

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure SecondStrandSynthesisPackage {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} (D : DNAPolymerasePackage) where
  secondStrandElongation : Prop
  nickLigation : Prop
  doubleStrandedCDNAFormed : Prop
  terminalRepeatAddition : Prop

structure SecondStrandSynthesisEvidence {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    (S : SecondStrandSynthesisPackage D) where
  secondStrandElongationClosed : S.secondStrandElongation
  nickLigationClosed : S.nickLigation
  doubleStrandedCDNAFormedClosed : S.doubleStrandedCDNAFormed
  terminalRepeatAdditionClosed : S.terminalRepeatAddition

def SecondStrandSynthesisClosed {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    (S : SecondStrandSynthesisPackage D) : Prop :=
  S.secondStrandElongation ∧ S.nickLigation ∧ S.doubleStrandedCDNAFormed ∧ S.terminalRepeatAddition

theorem second_strand_synthesis_closed_from_evidence
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    (S : SecondStrandSynthesisPackage D) (E : SecondStrandSynthesisEvidence S) :
    SecondStrandSynthesisClosed S := by
  exact And.intro E.secondStrandElongationClosed
    (And.intro E.nickLigationClosed
      (And.intro E.doubleStrandedCDNAFormedClosed E.terminalRepeatAdditionClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse