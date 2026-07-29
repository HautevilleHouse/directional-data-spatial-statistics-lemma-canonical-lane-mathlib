import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalKernelSmoothingPackage where
  kernelFunction : Type u
  bandwidth : Type v
  directionalWeight : Prop
  biasVarianceTradeoff : Prop
  asymptoticNormality : Prop
  meanIntegratedSquaredError : Prop

def DirectionalKernelSmoothingClosed (D : DirectionalKernelSmoothingPackage) : Prop :=
  D.directionalWeight ∧ D.biasVarianceTradeoff ∧ D.asymptoticNormality ∧ D.meanIntegratedSquaredError

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse