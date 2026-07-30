import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure PhaseDiagram where
  temperatureRange : Type u
  electricFieldRange : Type v
  paraelectricPhase : Prop
  ferroelectricPhase : Prop
  transitionTemperature : Prop
  curiePoint : Prop
  phaseBoundary : Prop
  paraelectricPhaseTerm : paraelectricPhase
  ferroelectricPhaseTerm : ferroelectricPhase
  transitionTemperatureTerm : transitionTemperature
  curiePointTerm : curiePoint
  phaseBoundaryTerm : phaseBoundary

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  paraelectricPhaseClosed : P.paraelectricPhase
  ferroelectricPhaseClosed : P.ferroelectricPhase
  transitionTemperatureClosed : P.transitionTemperature
  curiePointClosed : P.curiePoint
  phaseBoundaryClosed : P.phaseBoundary

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.paraelectricPhase ∧ P.ferroelectricPhase ∧ P.transitionTemperature ∧ P.curiePoint ∧ P.phaseBoundary

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.paraelectricPhaseClosed
    (And.intro E.ferroelectricPhaseClosed
      (And.intro E.transitionTemperatureClosed
        (And.intro E.curiePointClosed E.phaseBoundaryClosed)))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse