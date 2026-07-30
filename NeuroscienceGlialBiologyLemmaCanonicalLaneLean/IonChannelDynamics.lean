import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure IonChannelDynamicsPackage where
  naChannelConductance : Prop
  kChannelConductance : Prop
  leakageConductance : Prop
  membraneCapacitance : Prop
  voltageClampData : Prop

structure IonChannelDynamicsEvidence (P : IonChannelDynamicsPackage) where
  naChannelConductanceClosed : P.naChannelConductance
  kChannelConductanceClosed : P.kChannelConductance
  leakageConductanceClosed : P.leakageConductance
  membraneCapacitanceClosed : P.membraneCapacitance
  voltageClampDataClosed : P.voltageClampData

def IonChannelDynamicsClosed (P : IonChannelDynamicsPackage) : Prop :=
  P.naChannelConductance ∧ P.kChannelConductance ∧
  P.leakageConductance ∧ P.membraneCapacitance ∧ P.voltageClampData

theorem ion_channel_dynamics_closed_from_evidence (P : IonChannelDynamicsPackage) (E : IonChannelDynamicsEvidence P) :
    IonChannelDynamicsClosed P := by
  exact And.intro E.naChannelConductanceClosed
    (And.intro E.kChannelConductanceClosed
      (And.intro E.leakageConductanceClosed
        (And.intro E.membraneCapacitanceClosed E.voltageClampDataClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse