import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure CrystalStructure where
  unitCell : Type u
  latticeParameters : Type v
  pointGroupSymmetry : Prop
  polarAxis : Prop
  nonCentrosymmetric : Prop
  switchablePolarization : Prop
  pointGroupSymmetryTerm : pointGroupSymmetry
  polarAxisTerm : polarAxis
  nonCentrosymmetricTerm : nonCentrosymmetric
  switchablePolarizationTerm : switchablePolarization

structure CrystalStructureEvidence (C : CrystalStructure) where
  pointGroupSymmetryClosed : C.pointGroupSymmetry
  polarAxisClosed : C.polarAxis
  nonCentrosymmetricClosed : C.nonCentrosymmetric
  switchablePolarizationClosed : C.switchablePolarization

def CrystalStructureClosed (C : CrystalStructure) : Prop :=
  C.pointGroupSymmetry ∧ C.polarAxis ∧ C.nonCentrosymmetric ∧ C.switchablePolarization

theorem crystal_structure_closed_from_evidence (C : CrystalStructure) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.pointGroupSymmetryClosed
    (And.intro E.polarAxisClosed
      (And.intro E.nonCentrosymmetricClosed E.switchablePolarizationClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse