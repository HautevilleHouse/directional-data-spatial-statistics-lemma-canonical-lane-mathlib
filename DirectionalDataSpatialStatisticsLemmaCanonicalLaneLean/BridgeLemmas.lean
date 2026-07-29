import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (match A.object with
  | AdmittedObject.dirStats p => p.consistency)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Constructive proof from admissible object
  have h := A.object.consistency
  exact h

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse