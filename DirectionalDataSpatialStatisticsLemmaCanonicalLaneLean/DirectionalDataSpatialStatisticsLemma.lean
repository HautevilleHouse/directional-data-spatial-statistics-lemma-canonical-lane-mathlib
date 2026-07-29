import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Directional Data Spatial Statistics Lemma Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalDataPackage where
  observation : Type u
  direction : Type v
  spatialLocation : Type w
  jointDistribution : Prop
  directionDistribution : Prop
  spatialDistribution : Prop
  independenceAssumption : Prop

structure DirectionalDataEvidence (D : DirectionalDataPackage) where
  jointDistributionClosed : D.jointDistribution
  directionDistributionClosed : D.directionDistribution
  spatialDistributionClosed : D.spatialDistribution
  independenceAssumptionClosed : D.independenceAssumption

def DirectionalDataClosed (D : DirectionalDataPackage) : Prop :=
  D.jointDistribution ∧ D.directionDistribution ∧ D.spatialDistribution ∧ D.independenceAssumption

theorem directional_data_closed_from_evidence (D : DirectionalDataPackage) (E : DirectionalDataEvidence D) : DirectionalDataClosed D := by
  exact And.intro E.jointDistributionClosed
    (And.intro E.directionDistributionClosed
      (And.intro E.spatialDistributionClosed E.independenceAssumptionClosed))

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse