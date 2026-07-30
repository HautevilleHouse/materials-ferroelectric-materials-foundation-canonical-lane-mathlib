import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure FerroelectricPolarization where
  spontaneousPolarization : ℝ
  coerciveField : ℝ
  remanentPolarization : ℝ
  hysteresisLoopArea : ℝ

definition PolarizationAdmissible (P : FerroelectricPolarization) : Prop :=
  P.spontaneousPolarization > 0 ∧ P.coerciveField > 0

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse