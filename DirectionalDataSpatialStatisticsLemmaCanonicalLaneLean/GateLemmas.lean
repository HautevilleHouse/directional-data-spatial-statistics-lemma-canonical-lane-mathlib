import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse