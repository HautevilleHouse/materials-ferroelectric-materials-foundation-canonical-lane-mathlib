import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramLandau where
  orderParameter : Type u
  freeEnergyExpansion : Prop
  phaseTransitionOrder : Prop
  dielectricConstantAnomaly : Prop
  piezoelectricResponse : Prop
  domainWallEnergy : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramLandau) where
  freeEnergyExpansionClosed : P.freeEnergyExpansion
  phaseTransitionOrderClosed : P.phaseTransitionOrder
  dielectricConstantAnomalyClosed : P.dielectricConstantAnomaly
  piezoelectricResponseClosed : P.piezoelectricResponse
  domainWallEnergyClosed : P.domainWallEnergy

def PhaseDiagramClosed (P : PhaseDiagramLandau) : Prop :=
  P.freeEnergyExpansion ∧ P.phaseTransitionOrder ∧
  P.dielectricConstantAnomaly ∧ P.piezoelectricResponse ∧ P.domainWallEnergy

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramLandau)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.freeEnergyExpansionClosed
    (And.intro E.phaseTransitionOrderClosed
      (And.intro E.dielectricConstantAnomalyClosed
        (And.intro E.piezoelectricResponseClosed E.domainWallEnergyClosed)))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
