import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure ThinFilmInterfacePackage where
  substrate : Type u
  filmThickness : Prop
  interfaceRoughness : Prop
  epitaxialStrain : Prop
  depolarizationField : Prop
  leakageCurrent : Prop

structure ThinFilmInterfaceEvidence (T : ThinFilmInterfacePackage) where
  filmThicknessClosed : T.filmThickness
  interfaceRoughnessClosed : T.interfaceRoughness
  epitaxialStrainClosed : T.epitaxialStrain
  depolarizationFieldClosed : T.depolarizationField
  leakageCurrentClosed : T.leakageCurrent

def ThinFilmInterfaceClosed (T : ThinFilmInterfacePackage) : Prop :=
  T.filmThickness ∧ T.interfaceRoughness ∧ T.epitaxialStrain ∧
  T.depolarizationField ∧ T.leakageCurrent

theorem thin_film_interface_closed_from_evidence (T : ThinFilmInterfacePackage)
    (E : ThinFilmInterfaceEvidence T) : ThinFilmInterfaceClosed T := by
  exact And.intro E.filmThicknessClosed
    (And.intro E.interfaceRoughnessClosed
      (And.intro E.epitaxialStrainClosed
        (And.intro E.depolarizationFieldClosed E.leakageCurrentClosed)))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse