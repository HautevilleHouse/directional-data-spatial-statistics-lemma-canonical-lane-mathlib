import HautevilleHouse.DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean.DirectionalDataSpatialStatisticsLemma

/-!
# Spatial Smoothing Kernel Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean

structure SpatialSmoothingKernelPackage {D : DirectionalDataPackage} (E : DirectionalDataEvidence D) where
  kernelFunction : Type u
  bandwidth : Type v
  kernelProperties : Prop
  bandwidthSelection : Prop
  asymptoticNormality : Prop

structure SpatialSmoothingKernelEvidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    (K : SpatialSmoothingKernelPackage E) where
  kernelPropertiesClosed : K.kernelProperties
  bandwidthSelectionClosed : K.bandwidthSelection
  asymptoticNormalityClosed : K.asymptoticNormality

def SpatialSmoothingKernelClosed {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    (K : SpatialSmoothingKernelPackage E) : Prop :=
  K.kernelProperties ∧ K.bandwidthSelection ∧ K.asymptoticNormality

theorem spatial_smoothing_kernel_closed_from_evidence {D : DirectionalDataPackage} {E : DirectionalDataEvidence D}
    (K : SpatialSmoothingKernelPackage E) (Ev : SpatialSmoothingKernelEvidence K) : SpatialSmoothingKernelClosed K := by
  exact And.intro Ev.kernelPropertiesClosed
    (And.intro Ev.bandwidthSelectionClosed Ev.asymptoticNormalityClosed)

end DirectionalDataSpatialStatisticsLemmaCanonicalLaneLean
end HautevilleHouse