import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SphericalHarmonicsPackage where
  dimension : Nat
  orthonormalBasis : Type u
  laplacianEigenfunctions : Prop
  additionTheorem : Prop
  sieveEstimate : Prop

structure SphericalHarmonicsEvidence (S : SphericalHarmonicsPackage) where
  orthonormalBasisClosed : S.orthonormalBasis
  laplacianEigenfunctionsClosed : S.laplacianEigenfunctions
  additionTheoremClosed : S.additionTheorem
  sieveEstimateClosed : S.sieveEstimate

def SphericalHarmonicsClosed (S : SphericalHarmonicsPackage) : Prop :=
  S.orthonormalBasis ∧ S.laplacianEigenfunctions ∧ S.additionTheorem ∧ S.sieveEstimate

theorem spherical_harmonics_closed_from_evidence (S : SphericalHarmonicsPackage) (E : SphericalHarmonicsEvidence S) : SphericalHarmonicsClosed S := by
  exact And.intro E.orthonormalBasisClosed (And.intro E.laplacianEigenfunctionsClosed (And.intro E.additionTheoremClosed E.sieveEstimateClosed))

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse