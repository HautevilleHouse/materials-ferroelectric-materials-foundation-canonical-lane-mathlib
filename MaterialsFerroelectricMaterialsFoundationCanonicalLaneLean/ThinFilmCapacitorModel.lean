import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean

structure ThinFilmCapacitorModel where
  electrodeInterfaces : Prop
  leakageCurrent : Prop
  polarizationFatigue : Prop
  imprintEffect : Prop
  retentionLoss : Prop
  capacitorReliability : Prop

structure ThinFilmEvidence (T : ThinFilmCapacitorModel) where
  electrodeInterfacesClosed : T.electrodeInterfaces
  leakageCurrentClosed : T.leakageCurrent
  polarizationFatigueClosed : T.polarizationFatigue
  imprintEffectClosed : T.imprintEffect
  retentionLossClosed : T.retentionLoss
  capacitorReliabilityClosed : T.capacitorReliability

def ThinFilmClosed (T : ThinFilmCapacitorModel) : Prop :=
  T.electrodeInterfaces ∧ T.leakageCurrent ∧
  T.polarizationFatigue ∧ T.imprintEffect ∧
  T.retentionLoss ∧ T.capacitorReliability

theorem thin_film_closed_from_evidence (T : ThinFilmCapacitorModel)
    (E : ThinFilmEvidence T) : ThinFilmClosed T := by
  exact And.intro E.electrodeInterfacesClosed
    (And.intro E.leakageCurrentClosed
      (And.intro E.polarizationFatigueClosed
        (And.intro E.imprintEffectClosed
          (And.intro E.retentionLossClosed E.capacitorReliabilityClosed))))

end MaterialsFerroelectricMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
