import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure AnisotropicVariogramPackage where
  directionalVariogram : Type u
  anisotropyParameters : Type v
  rangeParameter : Prop
  sillParameter : Prop
  nuggetEffect : Prop

structure AnisotropicVariogramEvidence (V : AnisotropicVariogramPackage) where
  rangeParameterClosed : V.rangeParameter
  sillParameterClosed : V.sillParameter
  nuggetEffectClosed : V.nuggetEffect

def AnisotropicVariogramClosed (V : AnisotropicVariogramPackage) : Prop :=
  V.rangeParameter ∧ V.sillParameter ∧ V.nuggetEffect

theorem anisotropic_variogram_closed_from_evidence
    (V : AnisotropicVariogramPackage)
    (E : AnisotropicVariogramEvidence V) : AnisotropicVariogramClosed V := by
  exact And.intro E.rangeParameterClosed
    (And.intro E.sillParameterClosed E.nuggetEffectClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse