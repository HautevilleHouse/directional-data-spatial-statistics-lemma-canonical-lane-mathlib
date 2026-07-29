import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SpatialStatisticsVariogramPackage where
  spatialProcess : Type u
  variogram : Type v
  intrinsicStationarity : Prop
  variogramProperties : Prop
  krigingPrediction : Type w
  bestLinearUnbiasedPredictor : Prop

def SpatialStatisticsVariogramClosed (S : SpatialStatisticsVariogramPackage) : Prop :=
  S.intrinsicStationarity ∧ S.variogramProperties ∧ S.bestLinearUnbiasedPredictor

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse