import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure MLEConsistencyPackage where
  estimator : Type u
  parameterSpace : Type v
  logLikelihood : Type w
  identifiability : Prop
  compactness : Prop
  continuity : Prop
  uniformConvergence : Prop
  consistency : Prop

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.identifiability ∧ M.compactness ∧ M.continuity ∧ M.uniformConvergence ∧ M.consistency

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse