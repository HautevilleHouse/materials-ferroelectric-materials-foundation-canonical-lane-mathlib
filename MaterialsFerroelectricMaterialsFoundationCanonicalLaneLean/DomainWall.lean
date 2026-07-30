import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure DomainWall where
  wallEnergy : ℝ
  wallThickness : ℝ
  polarizationJump : ℝ

definition DomainWallAdmissible (W : DomainWall) : Prop :=
  W.wallEnergy > 0 ∧ W.wallThickness > 0

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse