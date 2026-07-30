import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean

structure ReverseTranscriptionPolymeraseChainReactionBiochemistry where
  templateRna : Type u
  reverseTranscriptase : Type v
  dnaPolymerase : Type w
  pcrCyclingProgram : Prop
  amplificationSpecificity : Prop
  productLengthDistribution : Prop
  quantificationMethod : Prop

structure ReverseTranscriptionPolymeraseChainReactionBiochemistryEvidence
    (R : ReverseTranscriptionPolymeraseChainReactionBiochemistry) where
  pcrCyclingProgramClosed : R.pcrCyclingProgram
  amplificationSpecificityClosed : R.amplificationSpecificity
  productLengthDistributionClosed : R.productLengthDistribution
  quantificationMethodClosed : R.quantificationMethod

def ReverseTranscriptionPolymeraseChainReactionBiochemistryClosed
    (R : ReverseTranscriptionPolymeraseChainReactionBiochemistry) : Prop :=
  R.pcrCyclingProgram ∧ R.amplificationSpecificity ∧
  R.productLengthDistribution ∧ R.quantificationMethod

theorem reverse_transcription_pcr_biochemistry_closed_from_evidence
    (R : ReverseTranscriptionPolymeraseChainReactionBiochemistry)
    (E : ReverseTranscriptionPolymeraseChainReactionBiochemistryEvidence R) :
    ReverseTranscriptionPolymeraseChainReactionBiochemistryClosed R := by
  exact And.intro E.pcrCyclingProgramClosed
    (And.intro E.amplificationSpecificityClosed
      (And.intro E.productLengthDistributionClosed E.quantificationMethodClosed))

end MolecularBiologyReverseTranscriptionFoundationCanonicalLaneLean
end HautevilleHouse