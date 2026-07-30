import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  spatialDomain : Type u
  measure : spatialDomain → ℝ
  firingRate : ℝ → ℝ
  connectivityKernel : spatialDomain → spatialDomain → ℝ
  fieldEquation : Prop
  stationarySolution : Prop
  stabilityCondition : Prop
  fieldEquationTerm : fieldEquation
  stationarySolutionTerm : stationarySolution
  stabilityConditionTerm : stabilityCondition

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  fieldEquationClosed : N.fieldEquation
  stationarySolutionClosed : N.stationarySolution
  stabilityConditionClosed : N.stabilityCondition

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.fieldEquation ∧ N.stationarySolution ∧ N.stabilityCondition

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.fieldEquationClosed (And.intro E.stationarySolutionClosed E.stabilityConditionClosed)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse