import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure DirectionalDistributionFamily where
  supportSpace : Type u
  supportTopology : TopologicalSpace supportSpace
  parameterSpace : Type v
  density : supportSpace → parameterSpace → ℝ
  densityIntegratesToOne : ∀ θ : parameterSpace, ∫ x in setOf (fun x : supportSpace => True), density x θ = 1
  smoothnessInParameter : Prop
  identifiable : Prop

structure DirectionalDistributionFamilyEvidence (F : DirectionalDistributionFamily) where
  densityIntegratesToOneClosed : F.densityIntegratesToOne
  smoothnessInParameterClosed : F.smoothnessInParameter
  identifiableClosed : F.identifiable

def DirectionalDistributionFamilyClosed (F : DirectionalDistributionFamily) : Prop :=
  F.densityIntegratesToOne ∧ F.smoothnessInParameter ∧ F.identifiable

theorem directional_distribution_family_closed_from_evidence
    (F : DirectionalDistributionFamily) (E : DirectionalDistributionFamilyEvidence F) :
    DirectionalDistributionFamilyClosed F := by
  exact And.intro E.densityIntegratesToOneClosed
    (And.intro E.smoothnessInParameterClosed E.identifiableClosed)

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean