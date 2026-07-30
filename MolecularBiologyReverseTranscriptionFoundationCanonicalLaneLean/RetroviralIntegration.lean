import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure RetroviralIntegrationPackage where
  linearViralDNA : Type u
  integraseEnzyme : Type v
  strandTransferReaction : Prop
  integrationSiteSelection : Prop
  provirusFormation : Prop
  strandTransferReactionTerm : strandTransferReaction
  integrationSiteSelectionTerm : integrationSiteSelection
  provirusFormationTerm : provirusFormation

structure RetroviralIntegrationEvidence (P : RetroviralIntegrationPackage) where
  strandTransferReactionClosed : P.strandTransferReaction
  integrationSiteSelectionClosed : P.integrationSiteSelection
  provirusFormationClosed : P.provirusFormation

def RetroviralIntegrationClosed (P : RetroviralIntegrationPackage) : Prop :=
  P.strandTransferReaction ∧ P.integrationSiteSelection ∧ P.provirusFormation

theorem retroviral_integration_closed_from_evidence
    (P : RetroviralIntegrationPackage) (E : RetroviralIntegrationEvidence P) :
    RetroviralIntegrationClosed P := by
  exact And.intro E.strandTransferReactionClosed (And.intro E.integrationSiteSelectionClosed E.provirusFormationClosed)

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse