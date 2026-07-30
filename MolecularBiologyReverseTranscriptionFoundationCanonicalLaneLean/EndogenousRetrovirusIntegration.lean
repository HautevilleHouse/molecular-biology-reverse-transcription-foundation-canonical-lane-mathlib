import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure EndogenousRetrovirusIntegrationPackage where
  genomicIntegrationSite : String
  provirusLength : ℕ
  longTerminalRepeatsPresent : Bool
  integrationMechanism : String
  germlineTransmissionEvidence : Bool

structure EndogenousRetrovirusIntegrationEvidence (E : EndogenousRetrovirusIntegrationPackage) where
  genomicIntegrationSiteClosed : E.genomicIntegrationSite ≠ ""
  provirusLengthClosed : E.provirusLength ≥ 1000
  longTerminalRepeatsPresentClosed : E.longTerminalRepeatsPresent = true
  integrationMechanismClosed : E.integrationMechanism = "integrase-mediated" ∨ E.integrationMechanism = "homologous-recombination"
  germlineTransmissionEvidenceClosed : E.germlineTransmissionEvidence = true

def EndogenousRetrovirusIntegrationClosed (E : EndogenousRetrovirusIntegrationPackage) : Prop :=
  E.genomicIntegrationSite ≠ "" ∧ E.provirusLength ≥ 1000 ∧
  E.longTerminalRepeatsPresent = true ∧
  (E.integrationMechanism = "integrase-mediated" ∨ E.integrationMechanism = "homologous-recombination") ∧
  E.germlineTransmissionEvidence = true

theorem endogenous_retrovirus_integration_closed_from_evidence
  (E : EndogenousRetrovirusIntegrationPackage)
  (Ev : EndogenousRetrovirusIntegrationEvidence E) : EndogenousRetrovirusIntegrationClosed E := by
  refine And.intro Ev.genomicIntegrationSiteClosed ?_
  refine And.intro Ev.provirusLengthClosed ?_
  refine And.intro Ev.longTerminalRepeatsPresentClosed ?_
  refine And.intro Ev.integrationMechanismClosed Ev.germlineTransmissionEvidenceClosed

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse