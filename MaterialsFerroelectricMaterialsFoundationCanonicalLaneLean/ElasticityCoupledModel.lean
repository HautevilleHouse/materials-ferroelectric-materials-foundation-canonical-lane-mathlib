import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure ElasticityCoupledModel where
  elasticStiffness : Type u
  electrostrictiveCoupling : Prop
  unitCellDeformation : Prop
  mechanicalBoundaryConditions : Prop
  residualStress : Prop
  flexoelectricEffect : Prop

structure ElasticityEvidence (E : ElasticityCoupledModel) where
  electrostrictiveCouplingClosed : E.electrostrictiveCoupling
  unitCellDeformationClosed : E.unitCellDeformation
  mechanicalBoundaryConditionsClosed : E.mechanicalBoundaryConditions
  residualStressClosed : E.residualStress
  flexoelectricEffectClosed : E.flexoelectricEffect

def ElasticityClosed (E : ElasticityCoupledModel) : Prop :=
  E.electrostrictiveCoupling ∧ E.unitCellDeformation ∧
  E.mechanicalBoundaryConditions ∧ E.residualStress ∧ E.flexoelectricEffect

theorem elasticity_closed_from_evidence (E : ElasticityCoupledModel)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.electrostrictiveCouplingClosed
    (And.intro Ev.unitCellDeformationClosed
      (And.intro Ev.mechanicalBoundaryConditionsClosed
        (And.intro Ev.residualStressClosed Ev.flexoelectricEffectClosed)))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
