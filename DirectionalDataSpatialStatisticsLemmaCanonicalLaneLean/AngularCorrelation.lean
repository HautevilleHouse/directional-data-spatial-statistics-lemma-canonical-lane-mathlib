import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure AngularCorrelationPackage where
  spatialDomain : Type u
  directionalMeasure : Type v
  correlationFunction : Prop
  isotropyProperty : Prop
  decayEstimate : Prop

structure AngularCorrelationEvidence (A : AngularCorrelationPackage) where
  correlationFunctionClosed : A.correlationFunction
  isotropyPropertyClosed : A.isotropyProperty
  decayEstimateClosed : A.decayEstimate

def AngularCorrelationClosed (A : AngularCorrelationPackage) : Prop :=
  A.correlationFunction ∧ A.isotropyProperty ∧ A.decayEstimate

theorem angular_correlation_closed_from_evidence (A : AngularCorrelationPackage) (E : AngularCorrelationEvidence A) : AngularCorrelationClosed A := by
  exact And.intro E.correlationFunctionClosed (And.intro E.isotropyPropertyClosed E.decayEstimateClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse