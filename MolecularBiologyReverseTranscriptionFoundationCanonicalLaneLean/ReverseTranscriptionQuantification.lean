import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionQuantification where
  standardCurveCalibration : Prop
  relativeQuantification : Prop
  absoluteQuantification : Prop
  normalizationMethod : Prop
  detectionLimit : Prop

structure ReverseTranscriptionQuantificationEvidence (Q : ReverseTranscriptionQuantification) where
  standardCurveCalibrationClosed : Q.standardCurveCalibration
  relativeQuantificationClosed : Q.relativeQuantification
  absoluteQuantificationClosed : Q.absoluteQuantification
  normalizationMethodClosed : Q.normalizationMethod
  detectionLimitClosed : Q.detectionLimit

def ReverseTranscriptionQuantificationClosed (Q : ReverseTranscriptionQuantification) : Prop :=
  Q.standardCurveCalibration ∧ Q.relativeQuantification ∧
  Q.absoluteQuantification ∧ Q.normalizationMethod ∧ Q.detectionLimit

theorem reverse_transcription_quantification_closed_from_evidence
    (Q : ReverseTranscriptionQuantification)
    (E : ReverseTranscriptionQuantificationEvidence Q) :
    ReverseTranscriptionQuantificationClosed Q := by
  exact And.intro E.standardCurveCalibrationClosed
    (And.intro E.relativeQuantificationClosed
      (And.intro E.absoluteQuantificationClosed
        (And.intro E.normalizationMethodClosed E.detectionLimitClosed)))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse