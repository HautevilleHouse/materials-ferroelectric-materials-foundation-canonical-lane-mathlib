import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PhaseTransitionPackage where
  paraelectricPhase : Type u
  ferroelectricPhase : Type v
  curieTemperature : Prop
  orderParameter : Prop
  freeEnergyExpansion : Prop
  polarizationReversal : Prop

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  curieTemperatureClosed : P.curieTemperature
  orderParameterClosed : P.orderParameter
  freeEnergyExpansionClosed : P.freeEnergyExpansion
  polarizationReversalClosed : P.polarizationReversal

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.curieTemperature ∧ P.orderParameter ∧ P.freeEnergyExpansion ∧ P.polarizationReversal

theorem phase_transition_closed_from_evidence (P : PhaseTransitionPackage)
    (E : PhaseTransitionEvidence P) : PhaseTransitionClosed P := by
  exact And.intro E.curieTemperatureClosed
    (And.intro E.orderParameterClosed
      (And.intro E.freeEnergyExpansionClosed E.polarizationReversalClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse