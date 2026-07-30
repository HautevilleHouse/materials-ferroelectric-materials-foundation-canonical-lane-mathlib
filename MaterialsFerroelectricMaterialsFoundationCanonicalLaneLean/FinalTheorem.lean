import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

def ConstrainedFerroelectricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ferroelectric_endgame (A : AdmissibleClass) :
    ConstrainedFerroelectricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse