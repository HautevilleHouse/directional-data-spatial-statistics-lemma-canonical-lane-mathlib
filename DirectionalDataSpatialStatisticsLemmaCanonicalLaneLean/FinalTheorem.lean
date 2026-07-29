import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

def ConstrainedDirectionalDataClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_directional_data_endgame (A : AdmissibleClass) :
    ConstrainedDirectionalDataClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean