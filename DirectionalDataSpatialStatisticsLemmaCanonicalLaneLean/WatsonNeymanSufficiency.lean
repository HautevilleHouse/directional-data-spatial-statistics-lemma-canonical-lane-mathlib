import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SufficiencyReduction where
  originalFamily : DirectionalDistributionFamily
  statistic : originalFamily.supportSpace → ℝⁿ
  conditionalDistributionKnown : Prop
  sufficientStatistic : Prop
  exponentialFamilyForm : Prop

structure SufficiencyEvidence (S : SufficiencyReduction) where
  conditionalDistributionKnownClosed : S.conditionalDistributionKnown
  sufficientStatisticClosed : S.sufficientStatistic
  exponentialFamilyFormClosed : S.exponentialFamilyForm

def SufficiencyClosed (S : SufficiencyReduction) : Prop :=
  S.conditionalDistributionKnown ∧ S.sufficientStatistic ∧ S.exponentialFamilyForm

theorem sufficiency_closed_from_evidence (S : SufficiencyReduction) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.conditionalDistributionKnownClosed
    (And.intro E.sufficientStatisticClosed E.exponentialFamilyFormClosed)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean