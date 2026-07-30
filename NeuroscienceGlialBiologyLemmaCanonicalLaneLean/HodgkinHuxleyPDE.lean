import NeuroscienceGlialBiologyLemmaCanonicalLaneLean.GlialBiologyObjects

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyPDE where
  membranePotential : Type
  gatingVariables : Type
  ionCurrents : Type
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  initialCondition : Prop
  solutionExistence : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPDE) where
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  initialConditionClosed : H.initialCondition
  solutionExistenceClosed : H.solutionExistence

def HodgkinHuxleyClosed (H : HodgkinHuxleyPDE) : Prop := H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧ H.initialCondition ∧ H.solutionExistence

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPDE) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelClosed (And.intro E.potassiumChannelClosed (And.intro E.leakChannelClosed (And.intro E.initialConditionClosed E.solutionExistenceClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
