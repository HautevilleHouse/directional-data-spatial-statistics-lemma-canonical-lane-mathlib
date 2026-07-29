import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SpectralRepresentationPackage (S : SphericalHarmonicsPackage) where
  spectralDensity : Prop
  amplitudeProcess : Prop
  orthogonalityRelation : Prop
  karhunenLoeveExpansion : Prop

structure SpectralRepresentationEvidence {S : SphericalHarmonicsPackage} (R : SpectralRepresentationPackage S) where
  spectralDensityClosed : R.spectralDensity
  amplitudeProcessClosed : R.amplitudeProcess
  orthogonalityRelationClosed : R.orthogonalityRelation
  karhunenLoeveExpansionClosed : R.karhunenLoeveExpansion

def SpectralRepresentationClosed {S : SphericalHarmonicsPackage} (R : SpectralRepresentationPackage S) : Prop :=
  R.spectralDensity ∧ R.amplitudeProcess ∧ R.orthogonalityRelation ∧ R.karhunenLoeveExpansion

theorem spectral_representation_closed_from_evidence {S : SphericalHarmonicsPackage} (R : SpectralRepresentationPackage S) (E : SpectralRepresentationEvidence R) : SpectralRepresentationClosed R := by
  exact And.intro E.spectralDensityClosed (And.intro E.amplitudeProcessClosed (And.intro E.orthogonalityRelationClosed E.karhunenLoeveExpansionClosed))

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse