import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalDistributionPackage where
  sphereSupport : Type u
  sphereTopology : TopologicalSpace sphereSupport
  sphereMeasure : Type v
  densityFamily : Type w
  distributionDefined : Prop
  supportIsSphere : Prop
  measureAbsolutelyContinuous : Prop

def DirectionalDistributionClosed (D : DirectionalDistributionPackage) : Prop :=
  D.distributionDefined ∧ D.supportIsSphere ∧ D.measureAbsolutelyContinuous

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse