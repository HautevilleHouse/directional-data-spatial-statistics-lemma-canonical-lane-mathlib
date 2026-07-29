import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure KrigingPredictionPackage {P : DirectionalDataSpatialStatisticsPackage}
    (D : DirectionalDataSpatialStatisticsEvidence P) where
  variogramModel : Type u
  krigingWeights : Type v
  bestLinearUnbiasedPrediction : Prop
  predictionVariance : Prop
  krigingEquationsSolved : Prop

structure KrigingPredictionEvidence {P : DirectionalDataSpatialStatisticsPackage}
    {D : DirectionalDataSpatialStatisticsEvidence P}
    (K : KrigingPredictionPackage D) where
  bestLinearUnbiasedPredictionClosed : K.bestLinearUnbiasedPrediction
  predictionVarianceClosed : K.predictionVariance
  krigingEquationsSolvedClosed : K.krigingEquationsSolved

def KrigingPredictionClosed {P : DirectionalDataSpatialStatisticsPackage}
    {D : DirectionalDataSpatialStatisticsEvidence P}
    (K : KrigingPredictionPackage D) : Prop :=
  K.bestLinearUnbiasedPrediction ∧ K.predictionVariance ∧ K.krigingEquationsSolved

theorem kriging_prediction_closed_from_evidence
    {P : DirectionalDataSpatialStatisticsPackage}
    {D : DirectionalDataSpatialStatisticsEvidence P}
    (K : KrigingPredictionPackage D) (E : KrigingPredictionEvidence K) :
    KrigingPredictionClosed K := by
  exact And.intro E.bestLinearUnbiasedPredictionClosed
    (And.intro E.predictionVarianceClosed E.krigingEquationsSolvedClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse