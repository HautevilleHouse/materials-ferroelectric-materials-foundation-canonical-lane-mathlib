import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PerovskiteLattice where
  a : ℝ
  b : ℝ
  c : ℝ
  alpha : ℝ
  beta : ℝ
  gamma : ℝ
  symmetryGroup : String
  distortionParameter : ℝ

distortionParameter Nonzero : Prop := x ≠ 0

definition LatticeAdmissible (L : PerovskiteLattice) : Prop :=
  L.distortionParameter ≠ 0

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse