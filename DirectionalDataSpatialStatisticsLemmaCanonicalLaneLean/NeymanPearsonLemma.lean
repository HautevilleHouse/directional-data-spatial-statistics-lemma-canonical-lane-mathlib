import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure HypothesisTestProblem where
  nullHypothesis : DirectionalDistributionFamily
  alternativeHypothesis : DirectionalDistributionFamily
  testRule : nullHypothesis.supportSpace → {0,1}
  significanceLevel : ℝ
  power : ℝ
  mostPowerful : Prop

structure NeymanPearsonEvidence (H : HypothesisTestProblem) where
  testRuleDefined : True
  mostPowerfulClosed : H.mostPowerful
  significanceLevelClosed : H.significanceLevel > 0 ∧ H.significanceLevel < 1
  powerClosed : H.power > 0 ∧ H.power < 1

def NeymanPearsonClosed (H : HypothesisTestProblem) : Prop :=
  H.mostPowerful ∧ H.significanceLevel > 0 ∧ H.significanceLevel < 1 ∧ H.power > 0 ∧ H.power < 1

theorem neyman_pearson_closed_from_evidence (H : HypothesisTestProblem) (E : NeymanPearsonEvidence H) :
    NeymanPearsonClosed H := by
  exact And.intro E.mostPowerfulClosed
    (And.intro E.significanceLevelClosed.1
      (And.intro E.significanceLevelClosed.2
        (And.intro E.powerClosed.1 E.powerClosed.2)))

end HautevilleHouse
end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean