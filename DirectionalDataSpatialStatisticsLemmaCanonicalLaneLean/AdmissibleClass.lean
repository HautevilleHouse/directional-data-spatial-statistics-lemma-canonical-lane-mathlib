import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DirectionalDataAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DirectionalDataWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse