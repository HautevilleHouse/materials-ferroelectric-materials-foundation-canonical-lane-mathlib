import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FerroelectricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.ferroelectricAdmittedTerm

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse