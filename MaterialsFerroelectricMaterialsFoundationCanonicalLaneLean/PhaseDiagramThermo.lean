import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundary : Prop
  curieTemperature : Prop
  phaseTransitionOrder : Prop
  phaseBoundaryTerm : phaseBoundary
  curieTemperatureTerm : curieTemperature
  phaseTransitionOrderTerm : phaseTransitionOrder

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundaryClosed : P.phaseBoundary
  curieTemperatureClosed : P.curieTemperature
  phaseTransitionOrderClosed : P.phaseTransitionOrder

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundary ∧ P.curieTemperature ∧ P.phaseTransitionOrder

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.phaseBoundaryClosed
    (And.intro E.curieTemperatureClosed E.phaseTransitionOrderClosed)

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse