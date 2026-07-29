import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.LocalPolynomialFitting

/-!
# Semiparametric Efficiency Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SemiparametricEfficiencyPackage {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} (EvL : LocalPolynomialFittingEvidence L) where
  efficientEstimator : Type u
  asymptoticVariance : Prop
  semiparametricBound : Prop

structure SemiparametricEfficiencyEvidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    (S : SemiparametricEfficiencyPackage EvL) where
  asymptoticVarianceClosed : S.asymptoticVariance
  semiparametricBoundClosed : S.semiparametricBound

def SemiparametricEfficiencyClosed {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    (S : SemiparametricEfficiencyPackage EvL) : Prop :=
  S.asymptoticVariance ∧ S.semiparametricBound

theorem semiparametric_efficiency_closed_from_evidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    {L : LocalPolynomialFittingPackage EvK} {EvL : LocalPolynomialFittingEvidence L}
    (S : SemiparametricEfficiencyPackage EvL) (EvS : SemiparametricEfficiencyEvidence S) : SemiparametricEfficiencyClosed S := by
  exact And.intro EvS.asymptoticVarianceClosed EvS.semiparametricBoundClosed

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse