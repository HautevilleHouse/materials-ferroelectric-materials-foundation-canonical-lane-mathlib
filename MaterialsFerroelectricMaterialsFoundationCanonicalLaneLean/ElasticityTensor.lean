import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure ElasticityTensor where
  elasticCompliance : Type u
  elasticStiffness : Type v
  symmetryConstraints : Prop
  positiveDefiniteness : Prop
  crystalClassCompatibility : Prop
  symmetryConstraintsTerm : symmetryConstraints
  positiveDefinitenessTerm : positiveDefiniteness
  crystalClassCompatibilityTerm : crystalClassCompatibility

structure ElasticityTensorEvidence (E : ElasticityTensor) where
  symmetryConstraintsClosed : E.symmetryConstraints
  positiveDefinitenessClosed : E.positiveDefiniteness
  crystalClassCompatibilityClosed : E.crystalClassCompatibility

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.symmetryConstraints ∧ E.positiveDefiniteness ∧ E.crystalClassCompatibility

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensor) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryConstraintsClosed
    (And.intro Ev.positiveDefinitenessClosed Ev.crystalClassCompatibilityClosed)

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse