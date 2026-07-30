import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure DomainWallDynamicsPackage where
  polarizationReversal : Prop
  switchingBarrier : Prop
  nucleationRate : Prop
  propagationVelocity : Prop

structure DomainWallDynamicsEvidence (P : DomainWallDynamicsPackage) where
  polarizationReversalClosed : P.polarizationReversal
  switchingBarrierClosed : P.switchingBarrier
  nucleationRateClosed : P.nucleationRate
  propagationVelocityClosed : P.propagationVelocity

def DomainWallDynamicsClosed (P : DomainWallDynamicsPackage) : Prop :=
  P.polarizationReversal ∧ P.switchingBarrier ∧
  P.nucleationRate ∧ P.propagationVelocity

theorem domain_wall_dynamics_closed_from_evidence
    (P : DomainWallDynamicsPackage) (E : DomainWallDynamicsEvidence P) :
    DomainWallDynamicsClosed P := by
  exact And.intro E.polarizationReversalClosed
    (And.intro E.switchingBarrierClosed
      (And.intro E.nucleationRateClosed E.propagationVelocityClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
