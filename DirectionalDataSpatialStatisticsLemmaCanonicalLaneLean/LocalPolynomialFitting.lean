import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.SpatialSmoothingKernel

/-!
# Local Polynomial Fitting Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure LocalPolynomialFittingPackage {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} (EvK : SpatialSmoothingKernelEvidence K) where
  polynomialDegree : Nat
  weightFunction : Type u
  fittedCoefficients : Prop
  biasVarianceTradeoff : Prop
  consistency : Prop

structure LocalPolynomialFittingEvidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    (L : LocalPolynomialFittingPackage EvK) where
  fittedCoefficientsClosed : L.fittedCoefficients
  biasVarianceTradeoffClosed : L.biasVarianceTradeoff
  consistencyClosed : L.consistency

def LocalPolynomialFittingClosed {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    (L : LocalPolynomialFittingPackage EvK) : Prop :=
  L.fittedCoefficients ∧ L.biasVarianceTradeoff ∧ L.consistency

theorem local_polynomial_fitting_closed_from_evidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    {K : SpatialSmoothingKernelPackage E} {EvK : SpatialSmoothingKernelEvidence K}
    (L : LocalPolynomialFittingPackage EvK) (EvL : LocalPolynomialFittingEvidence L) : LocalPolynomialFittingClosed L := by
  exact And.intro EvL.fittedCoefficientsClosed
    (And.intro EvL.biasVarianceTradeoffClosed EvL.consistencyClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse