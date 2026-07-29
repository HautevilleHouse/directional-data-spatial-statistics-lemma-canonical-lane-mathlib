import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure CompositeLikelihoodPackage where
  likelihoodFunction : Type u
  pairwiseComposite : Prop
  consistencyUnderIncreasingDomain : Prop
  asymptoticEfficiency : Prop

structure CompositeLikelihoodEvidence (C : CompositeLikelihoodPackage) where
  pairwiseCompositeClosed : C.pairwiseComposite
  consistencyUnderIncreasingDomainClosed : C.consistencyUnderIncreasingDomain
  asymptoticEfficiencyClosed : C.asymptoticEfficiency

def CompositeLikelihoodClosed (C : CompositeLikelihoodPackage) : Prop :=
  C.pairwiseComposite ∧ C.consistencyUnderIncreasingDomain ∧ C.asymptoticEfficiency

theorem composite_likelihood_closed_from_evidence
    (C : CompositeLikelihoodPackage)
    (E : CompositeLikelihoodEvidence C) : CompositeLikelihoodClosed C := by
  exact And.intro E.pairwiseCompositeClosed
    (And.intro E.consistencyUnderIncreasingDomainClosed E.asymptoticEfficiencyClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse