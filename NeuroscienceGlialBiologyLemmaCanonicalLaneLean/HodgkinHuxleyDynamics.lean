import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  ionChannelConductances : ℝ → ℝ × ℝ × ℝ  -- (Na, K, leak) as functions of time
  reversalPotentials : ℝ × ℝ × ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  activationKinetics : Prop
  inactivationKinetics : Prop
  initialConditions : Prop
  activationKineticsTerm : activationKinetics
  inactivationKineticsTerm : inactivationKinetics
  initialConditionsTerm : initialConditions

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  activationKineticsClosed : H.activationKinetics
  inactivationKineticsClosed : H.inactivationKinetics
  initialConditionsClosed : H.initialConditions

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop := H.activationKinetics ∧ H.inactivationKinetics ∧ H.initialConditions

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.activationKineticsClosed (And.intro E.inactivationKineticsClosed E.initialConditionsClosed)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse