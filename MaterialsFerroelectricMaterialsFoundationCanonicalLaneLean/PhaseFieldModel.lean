import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PhaseFieldModelPackage where
  landauGinzburgFunctional : Prop
  orderParameter : Prop
  gradientEnergy : Prop
  electrostaticCoupling : Prop

structure PhaseFieldModelEvidence (P : PhaseFieldModelPackage) where
  landauGinzburgFunctionalClosed : P.landauGinzburgFunctional
  orderParameterClosed : P.orderParameter
  gradientEnergyClosed : P.gradientEnergy
  electrostaticCouplingClosed : P.electrostaticCoupling

def PhaseFieldModelClosed (P : PhaseFieldModelPackage) : Prop :=
  P.landauGinzburgFunctional ∧ P.orderParameter ∧
  P.gradientEnergy ∧ P.electrostaticCoupling

theorem phase_field_model_closed_from_evidence
    (P : PhaseFieldModelPackage) (E : PhaseFieldModelEvidence P) :
    PhaseFieldModelClosed P := by
  exact And.intro E.landauGinzburgFunctionalClosed
    (And.intro E.orderParameterClosed
      (And.intro E.gradientEnergyClosed E.electrostaticCouplingClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
