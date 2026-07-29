import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.SemiparametricEfficiency

/-!
# Directional Spatial Central Limit Theorem Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalSpatialCentralLimitTheoremPackage {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    {S : SemiparametricEfficiencyPackage EvL} (EvS : SemiparametricEfficiencyEvidence S) where
  estimatorAsymptoticNormality : Prop
  rateOfConvergence : Prop
  covarianceEstimation : Prop
  confidenceRegions : Prop

structure DirectionalSpatialCentralLimitTheoremEvidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    {S : SemiparametricEfficiencyPackage EvL} {EvS : SemiparametricEfficiencyEvidence S}
    (C : DirectionalSpatialCentralLimitTheoremPackage EvS) where
  estimatorAsymptoticNormalityClosed : C.estimatorAsymptoticNormality
  rateOfConvergenceClosed : C.rateOfConvergence
  covarianceEstimationClosed : C.covarianceEstimation
  confidenceRegionsClosed : C.confidenceRegions

def DirectionalSpatialCentralLimitTheoremClosed {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    {S : SemiparametricEfficiencyPackage EvL} {EvS : SemiparametricEfficiencyEvidence S}
    (C : DirectionalSpatialCentralLimitTheoremPackage EvS) : Prop :=
  C.estimatorAsymptoticNormality ∧ C.rateOfConvergence ∧ C.covarianceEstimation ∧ C.confidenceRegions

theorem directional_spatial_clt_closed_from_evidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    {S : SemiparametricEfficiencyPackage EvL} {EvS : SemiparametricEfficiencyEvidence S}
    (C : DirectionalSpatialCentralLimitTheoremPackage EvS) (EvC : DirectionalSpatialCentralLimitTheoremEvidence C) : DirectionalSpatialCentralLimitTheoremClosed C := by
  exact And.intro EvC.estimatorAsymptoticNormalityClosed
    (And.intro EvC.rateOfConvergenceClosed
      (And.intro EvC.covarianceEstimationClosed EvC.confidenceRegionsClosed))

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse