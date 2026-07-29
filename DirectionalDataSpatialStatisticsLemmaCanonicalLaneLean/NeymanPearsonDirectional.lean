import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure NeymanPearsonDirectionalPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  significanceLevel : ℝ
  mostPowerfulTest : Prop
  testStatistic : Prop
  criticalRegion : Prop

def NeymanPearsonDirectionalClosed (N : NeymanPearsonDirectionalPackage) : Prop :=
  N.mostPowerfulTest ∧ N.testStatistic

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse