import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure CrystalSymmetryPackage where
  latticeType : Type u
  pointGroup : Type v
  spaceGroup : Type w
  symmetryReduction : Prop
  polarAxisPublic : Prop
  centrosymmetryBroken : Prop
  symmetryReductionTerm : symmetryReduction
  polarAxisPublicTerm : polarAxisPublic
  centrosymmetryBrokenTerm : centrosymmetryBroken

structure CrystalSymmetryEvidence (C : CrystalSymmetryPackage) where
  symmetryReductionClosed : C.symmetryReduction
  polarAxisPublicClosed : C.polarAxisPublic
  centrosymmetryBrokenClosed : C.centrosymmetryBroken

def CrystalSymmetryClosed (C : CrystalSymmetryPackage) : Prop :=
  C.symmetryReduction ∧ C.polarAxisPublic ∧ C.centrosymmetryBroken

theorem crystal_symmetry_closed_from_evidence (C : CrystalSymmetryPackage)
    (E : CrystalSymmetryEvidence C) : CrystalSymmetryClosed C :=
  And.intro E.symmetryReductionClosed
    (And.intro E.polarAxisPublicClosed E.centrosymmetryBrokenClosed)

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse