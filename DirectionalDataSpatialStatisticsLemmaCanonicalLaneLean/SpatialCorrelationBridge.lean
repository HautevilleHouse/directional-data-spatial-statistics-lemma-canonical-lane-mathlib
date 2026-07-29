import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SpatialCorrelationModel where
  spatialDomain : Type u
  spatialTopology : TopologicalSpace spatialDomain
  correlationFunction : spatialDomain → spatialDomain → ℝ
  positiveSemidefinite : Prop
  isotropic : Prop
  stationary : Prop

structure SpatialCorrelationEvidence (S : SpatialCorrelationModel) where
  positiveSemidefiniteClosed : S.positiveSemidefinite
  isotropicClosed : S.isotropic
  stationaryClosed : S.stationary

def SpatialCorrelationClosed (S : SpatialCorrelationModel) : Prop :=
  S.positiveSemidefinite ∧ S.isotropic ∧ S.stationary

theorem spatial_correlation_closed_from_evidence (S : SpatialCorrelationModel) (E : SpatialCorrelationEvidence S) :
    SpatialCorrelationClosed S := by
  exact And.intro E.positiveSemidefiniteClosed
    (And.intro E.isotropicClosed E.stationaryClosed)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean