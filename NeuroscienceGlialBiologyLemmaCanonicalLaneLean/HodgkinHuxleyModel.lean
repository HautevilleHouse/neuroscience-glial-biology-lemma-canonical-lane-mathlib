import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotentialEquation : Prop
  sodiumActivationVariable : Prop
  potassiumActivationVariable : Prop
  inactivationVariable : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (P : HodgkinHuxleyPackage) where
  membranePotentialEquationClosed : P.membranePotentialEquation
  sodiumActivationVariableClosed : P.sodiumActivationVariable
  potassiumActivationVariableClosed : P.potassiumActivationVariable
  inactivationVariableClosed : P.inactivationVariable
  actionPotentialGenerationClosed : P.actionPotentialGeneration

def HodgkinHuxleyClosed (P : HodgkinHuxleyPackage) : Prop :=
  P.membranePotentialEquation ∧ P.sodiumActivationVariable ∧
  P.potassiumActivationVariable ∧ P.inactivationVariable ∧ P.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (P : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence P) :
    HodgkinHuxleyClosed P := by
  exact And.intro E.membranePotentialEquationClosed
    (And.intro E.sodiumActivationVariableClosed
      (And.intro E.potassiumActivationVariableClosed
        (And.intro E.inactivationVariableClosed E.actionPotentialGenerationClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse