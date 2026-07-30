import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PolarizationSwitching where
  coerciveField : Prop
  polarizationHysteresis : Prop
  switchingKinetics : Prop
  fatigueMechanism : Prop
  coerciveFieldTerm : coerciveField
  polarizationHysteresisTerm : polarizationHysteresis
  switchingKineticsTerm : switchingKinetics
  fatigueMechanismTerm : fatigueMechanism

structure PolarizationSwitchingEvidence (P : PolarizationSwitching) where
  coerciveFieldClosed : P.coerciveField
  polarizationHysteresisClosed : P.polarizationHysteresis
  switchingKineticsClosed : P.switchingKinetics
  fatigueMechanismClosed : P.fatigueMechanism

def PolarizationSwitchingClosed (P : PolarizationSwitching) : Prop :=
  P.coerciveField ∧ P.polarizationHysteresis ∧ P.switchingKinetics ∧ P.fatigueMechanism

theorem polarization_switching_closed_from_evidence (P : PolarizationSwitching) (E : PolarizationSwitchingEvidence P) :
    PolarizationSwitchingClosed P := by
  exact And.intro E.coerciveFieldClosed
    (And.intro E.polarizationHysteresisClosed
      (And.intro E.switchingKineticsClosed E.fatigueMechanismClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse