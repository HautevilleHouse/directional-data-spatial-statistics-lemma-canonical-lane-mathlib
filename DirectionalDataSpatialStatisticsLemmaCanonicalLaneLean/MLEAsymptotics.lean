import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure MaximumLikelihoodEstimator where
  family : DirectionalDistributionFamily
  data : family.supportSpace → ℝ
  logLikelihoodFunction : family.parameterSpace → ℝ
  mle : family.parameterSpace
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEEvidence (M : MaximumLikelihoodEstimator) where
  mleDefined : True
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEClosed (M : MaximumLikelihoodEstimator) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_closed_from_evidence (M : MaximumLikelihoodEstimator) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.consistencyClosed
    (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean