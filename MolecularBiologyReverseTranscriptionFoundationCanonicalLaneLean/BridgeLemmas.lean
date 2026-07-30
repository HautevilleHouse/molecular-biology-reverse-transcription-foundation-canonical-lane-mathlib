import MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReverseTranscriptionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse