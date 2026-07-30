import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyIonChannelPackage where
  membranePotential : Type u
  timeDomain : Type v
  gatingVariables : Type w
  ionCurrents : Type x
  activationDynamics : Prop
  inactivationDynamics : Prop
  conductanceModel : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyIonChannelEvidence (H : HodgkinHuxleyIonChannelPackage) where
  activationDynamicsClosed : H.activationDynamics
  inactivationDynamicsClosed : H.inactivationDynamics
  conductanceModelClosed : H.conductanceModel
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyIonChannelClosed (H : HodgkinHuxleyIonChannelPackage) : Prop :=
  H.activationDynamics ∧ H.inactivationDynamics ∧ H.conductanceModel ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_ion_channel_closed_from_evidence (H : HodgkinHuxleyIonChannelPackage)
    (E : HodgkinHuxleyIonChannelEvidence H) : HodgkinHuxleyIonChannelClosed H := by
  exact And.intro E.activationDynamicsClosed
    (And.intro E.inactivationDynamicsClosed
      (And.intro E.conductanceModelClosed E.actionPotentialGenerationClosed))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
