import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalSufficiencyPackage where
  sampleSpace : Type u
  directionSpace : Type v
  sufficientStatistic : sampleSpace -> directionSpace
  exponentialFamilyForm : Prop
  factorizationTheorem : Prop
  directionParameter : Prop

def DirectionalSufficiencyClosed (D : DirectionalSufficiencyPackage) : Prop :=
  D.factorizationTheorem ∧ D.directionParameter

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse