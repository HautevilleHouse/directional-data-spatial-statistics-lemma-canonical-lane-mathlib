import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalDataSpatialStatisticsPackage where
  domain : Type u
  samplePoints : Type v
  directionalMeasure : domain → samplePoints → ℝ
  spatialCovariance : domain → domain → ℝ
  stationarityAssumption : Prop
  isotropyAssumption : Prop

structure DirectionalDataSpatialStatisticsEvidence (P : DirectionalDataSpatialStatisticsPackage) where
  stationarityAssumptionClosed : P.stationarityAssumption
  isotropyAssumptionClosed : P.isotropyAssumption

def DirectionalDataSpatialStatisticsClosed (P : DirectionalDataSpatialStatisticsPackage) : Prop :=
  P.stationarityAssumption ∧ P.isotropyAssumption

theorem directional_data_spatial_statistics_closed_from_evidence
    (P : DirectionalDataSpatialStatisticsPackage)
    (E : DirectionalDataSpatialStatisticsEvidence P) :
    DirectionalDataSpatialStatisticsClosed P := by
  exact And.intro E.stationarityAssumptionClosed E.isotropyAssumptionClosed

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse