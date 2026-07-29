import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SpatialCovarianceEstimationPackage where
  estimatorType : Type u
  consistencyProperty : Prop
  asymptoticNormality : Prop
  rateOfConvergence : Prop

structure SpatialCovarianceEstimationEvidence
    (E : SpatialCovarianceEstimationPackage) where
  consistencyPropertyClosed : E.consistencyProperty
  asymptoticNormalityClosed : E.asymptoticNormality
  rateOfConvergenceClosed : E.rateOfConvergence

def SpatialCovarianceEstimationClosed
    (E : SpatialCovarianceEstimationPackage) : Prop :=
  E.consistencyProperty ∧ E.asymptoticNormality ∧ E.rateOfConvergence

theorem spatial_covariance_estimation_closed_from_evidence
    (E : SpatialCovarianceEstimationPackage)
    (Ev : SpatialCovarianceEstimationEvidence E) :
    SpatialCovarianceEstimationClosed E := by
  exact And.intro Ev.consistencyPropertyClosed
    (And.intro Ev.asymptoticNormalityClosed Ev.rateOfConvergenceClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse