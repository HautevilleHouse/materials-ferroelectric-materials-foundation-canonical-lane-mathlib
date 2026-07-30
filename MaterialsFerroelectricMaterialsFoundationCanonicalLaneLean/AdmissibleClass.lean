import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure AdmissibleFerroObject where
  crystal : CrystalStructure
  phase : PhaseDiagram
  elasticity : ElasticityTensor
  fracture : FractureMechanics
  switching : PolarizationSwitching
  ferroelectricAdmitted : Prop
  ferroelectricAdmittedTerm : ferroelectricAdmitted

structure AdmissibleClass where
  object : AdmissibleFerroObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FerroelectricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def FerroelectricWitnessClosed (O : AdmissibleFerroObject) : Prop :=
  CrystalStructureClosed O.crystal ∧ PhaseDiagramClosed O.phase ∧
  ElasticityTensorClosed O.elasticity ∧ FractureMechanicsClosed O.fracture ∧
  PolarizationSwitchingClosed O.switching

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse