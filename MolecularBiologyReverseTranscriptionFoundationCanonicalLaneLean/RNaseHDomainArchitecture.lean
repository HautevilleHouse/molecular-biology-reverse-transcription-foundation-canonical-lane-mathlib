import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure RNaseHDomainPackage where
  activeSiteResidues : List String
  catalyticMechanism : String
  magnesiumDependence : Bool
  conservedMotifs : List String
  substrateSpecificity : Prop

structure RNaseHDomainEvidence (R : RNaseHDomainPackage) where
  activeSiteResiduesClosed : R.activeSiteResidues.length ≥ 3
  catalyticMechanismClosed : R.catalyticMechanism = "two-metal-ion" ∨ R.catalyticMechanism = "single-metal-ion"
  magnesiumDependenceClosed : R.magnesiumDependence = true
  conservedMotifsClosed : R.conservedMotifs ≠ []
  substrateSpecificityClosed : R.substrateSpecificity

def RNaseHDomainClosed (R : RNaseHDomainPackage) : Prop :=
  R.activeSiteResidues.length ≥ 3 ∧
  (R.catalyticMechanism = "two-metal-ion" ∨ R.catalyticMechanism = "single-metal-ion") ∧
  R.magnesiumDependence = true ∧
  R.conservedMotifs ≠ [] ∧
  R.substrateSpecificity

theorem rnase_h_domain_closed_from_evidence (R : RNaseHDomainPackage)
  (E : RNaseHDomainEvidence R) : RNaseHDomainClosed R := by
  refine And.intro E.activeSiteResiduesClosed ?_
  refine And.intro E.catalyticMechanismClosed ?_
  refine And.intro E.magnesiumDependenceClosed ?_
  refine And.intro E.conservedMotifsClosed E.substrateSpecificityClosed

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse