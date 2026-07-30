import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.SecondStrandSynthesis
import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.HostGenome

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure IntegrationEndpointPackage {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    {S : SecondStrandSynthesisPackage D} (H : HostGenomePackage) where
  doubleStrandedCDNAImported : Prop
  integraseComplexFormed : Prop
  strandTransferIntegration : Prop
  provirusFormed : Prop
  integrationEndpointReached : Prop

structure IntegrationEndpointEvidence {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    {S : SecondStrandSynthesisPackage D} {H : HostGenomePackage}
    (Ie : IntegrationEndpointPackage H) where
  doubleStrandedCDNAImportedClosed : Ie.doubleStrandedCDNAImported
  integraseComplexFormedClosed : Ie.integraseComplexFormed
  strandTransferIntegrationClosed : Ie.strandTransferIntegration
  provirusFormedClosed : Ie.provirusFormed
  integrationEndpointReachedClosed : Ie.integrationEndpointReached

def IntegrationEndpointClosed {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    {S : SecondStrandSynthesisPackage D} {H : HostGenomePackage}
    (Ie : IntegrationEndpointPackage H) : Prop :=
  Ie.doubleStrandedCDNAImported ∧ Ie.integraseComplexFormed ∧ Ie.strandTransferIntegration ∧
  Ie.provirusFormed ∧ Ie.integrationEndpointReached

theorem integration_endpoint_closed_from_evidence
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    {S : SecondStrandSynthesisPackage D} {H : HostGenomePackage}
    (Ie : IntegrationEndpointPackage H) (E : IntegrationEndpointEvidence Ie) :
    IntegrationEndpointClosed Ie := by
  exact And.intro E.doubleStrandedCDNAImportedClosed
    (And.intro E.integraseComplexFormedClosed
      (And.intro E.strandTransferIntegrationClosed
        (And.intro E.provirusFormedClosed E.integrationEndpointReachedClosed)))

theorem integration_endpoint_supplies_provirus_formed
    {T : TemplateRNAPackage} {P : PrimerBindingPackage T}
    {I : ReverseTranscriptionInitiationPackage T P} {N : NucleotidePoolPackage}
    {K : ElongationKineticsPackage N} {C : CDNAFirstStrandPackage K}
    {Tr : TerminalTransferPackage C} {D : DNAPolymerasePackage}
    {S : SecondStrandSynthesisPackage D} {H : HostGenomePackage}
    (Ie : IntegrationEndpointPackage H) : Ie.provirusFormed := Ie.provirusFormed

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse