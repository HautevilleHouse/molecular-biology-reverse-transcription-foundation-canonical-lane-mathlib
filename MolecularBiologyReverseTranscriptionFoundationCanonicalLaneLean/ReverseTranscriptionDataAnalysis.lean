import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionDataAnalysis where
  baselineCorrection : Prop
  thresholdSetting : Prop
  amplificationPlotFit : Prop
  efficiencyCalculation : Prop
  meltCurveAnalysis : Prop

structure ReverseTranscriptionDataAnalysisEvidence (D : ReverseTranscriptionDataAnalysis) where
  baselineCorrectionClosed : D.baselineCorrection
  thresholdSettingClosed : D.thresholdSetting
  amplificationPlotFitClosed : D.amplificationPlotFit
  efficiencyCalculationClosed : D.efficiencyCalculation
  meltCurveAnalysisClosed : D.meltCurveAnalysis

def ReverseTranscriptionDataAnalysisClosed (D : ReverseTranscriptionDataAnalysis) : Prop :=
  D.baselineCorrection ∧ D.thresholdSetting ∧
  D.amplificationPlotFit ∧ D.efficiencyCalculation ∧ D.meltCurveAnalysis

theorem reverse_transcription_data_analysis_closed_from_evidence
    (D : ReverseTranscriptionDataAnalysis)
    (E : ReverseTranscriptionDataAnalysisEvidence D) :
    ReverseTranscriptionDataAnalysisClosed D := by
  exact And.intro E.baselineCorrectionClosed
    (And.intro E.thresholdSettingClosed
      (And.intro E.amplificationPlotFitClosed
        (And.intro E.efficiencyCalculationClosed E.meltCurveAnalysisClosed)))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse