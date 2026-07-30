import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure FerroelectricCrystalStructure where
  latticeVectors : Type u
  polarizationSites : Type v
  spontaneousPolarization : Prop
  switchablePolarization : Prop
  curieTemperature : Prop
  spaceGroupSymmetry : Prop

structure FerroelectricCrystalEvidence (C : FerroelectricCrystalStructure) where
  spontaneousPolarizationClosed : C.spontaneousPolarization
  switchablePolarizationClosed : C.switchablePolarization
  curieTemperatureClosed : C.curieTemperature
  spaceGroupSymmetryClosed : C.spaceGroupSymmetry

def FerroelectricCrystalClosed (C : FerroelectricCrystalStructure) : Prop :=
  C.spontaneousPolarization ∧ C.switchablePolarization ∧
  C.curieTemperature ∧ C.spaceGroupSymmetry

theorem ferroelectric_crystal_closed_from_evidence (C : FerroelectricCrystalStructure)
    (E : FerroelectricCrystalEvidence C) : FerroelectricCrystalClosed C := by
  exact And.intro E.spontaneousPolarizationClosed
    (And.intro E.switchablePolarizationClosed
      (And.intro E.curieTemperatureClosed E.spaceGroupSymmetryClosed))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
