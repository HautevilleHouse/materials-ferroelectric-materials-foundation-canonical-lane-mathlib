import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure CrystalLatticePackage where
  unitCell : Type u
  latticeVectors : Type v
  symmetryGroup : Type w
  primitiveCellVolume : Prop
  bravaisLatticeType : Prop
  inversionSymmetry : Prop

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  primitiveCellVolumeClosed : C.primitiveCellVolume
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  inversionSymmetryClosed : C.inversionSymmetry

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.primitiveCellVolume ∧ C.bravaisLatticeType ∧ C.inversionSymmetry

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage)
    (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.primitiveCellVolumeClosed
    (And.intro E.bravaisLatticeTypeClosed E.inversionSymmetryClosed)

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse