import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure ExponentialFamilyForm where
  carrierFamily : DirectionalDistributionFamily
  canonicalParameterSpace : Type u
  sufficientStatistic : carrierFamily.supportSpace → canonicalParameterSpace
  logPartitionFunction : canonicalParameterSpace → ℝ
  logDensityExpression : carrierFamily.parameterSpace → ℝ
  exponentialFamilyProperty : Prop
  dirichletSpecialCase : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyForm) where
  exponentialFamilyPropertyClosed : E.exponentialFamilyProperty
  dirichletSpecialCaseClosed : E.dirichletSpecialCase
  logPartitionFunctionFinite : ∀ η : E.canonicalParameterSpace, E.logPartitionFunction η < ∞

def ExponentialFamilyClosed (E : ExponentialFamilyForm) : Prop :=
  E.exponentialFamilyProperty ∧ E.dirichletSpecialCase ∧ (∀ η : E.canonicalParameterSpace, E.logPartitionFunction η < ∞)

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyForm) (Ev : ExponentialFamilyEvidence E) :
    ExponentialFamilyClosed E := by
  exact And.intro Ev.exponentialFamilyPropertyClosed
    (And.intro Ev.dirichletSpecialCaseClosed Ev.logPartitionFunctionFinite)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean