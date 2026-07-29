import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure CrossValidationPackage where
  lossFunction : Type u
  biasCorrection : Prop
  varianceBound : Prop
  optimalBandwidth : Prop

structure CrossValidationEvidence (C : CrossValidationPackage) where
  biasCorrectionClosed : C.biasCorrection
  varianceBoundClosed : C.varianceBound
  optimalBandwidthClosed : C.optimalBandwidth

def CrossValidationClosed (C : CrossValidationPackage) : Prop :=
  C.biasCorrection ∧ C.varianceBound ∧ C.optimalBandwidth

theorem cross_validation_closed_from_evidence (C : CrossValidationPackage) (E : CrossValidationEvidence C) : CrossValidationClosed C := by
  exact And.intro E.biasCorrectionClosed (And.intro E.varianceBoundClosed E.optimalBandwidthClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse