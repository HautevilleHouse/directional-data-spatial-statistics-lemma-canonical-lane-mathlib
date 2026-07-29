import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SufficiencyExponentialFamilyPackage where
  statistic : Type u
  sufficientStatistic : Prop
  exponentialFamilyForm : Prop
  naturalParameter : Type v
  canonicalStatistic : Type w
  factorizationTheorem : Prop
  exponentialFamilyClosed : Prop

def SufficiencyExponentialFamilyClosed (S : SufficiencyExponentialFamilyPackage) : Prop :=
  S.sufficientStatistic ∧ S.exponentialFamilyForm ∧ S.factorizationTheorem ∧ S.exponentialFamilyClosed

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse