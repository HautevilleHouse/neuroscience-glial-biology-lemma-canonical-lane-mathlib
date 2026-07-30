import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure DiffusionPackage where
  concentrationField : ℝ³ → ℝ → ℝ
  diffusionCoefficient : ℝ
  reuptakeRate : ℝ
  sourceTerm : ℝ³ → ℝ → ℝ
  diffusionEquation : Prop
  boundaryConditions : Prop
  initialCondition : Prop
  diffusionEquationTerm : diffusionEquation
  boundaryConditionsTerm : boundaryConditions
  initialConditionTerm : initialCondition

structure DiffusionEvidence (D : DiffusionPackage) where
  diffusionEquationClosed : D.diffusionEquation
  boundaryConditionsClosed : D.boundaryConditions
  initialConditionClosed : D.initialCondition

def DiffusionClosed (D : DiffusionPackage) : Prop :=
  D.diffusionEquation ∧ D.boundaryConditions ∧ D.initialCondition

theorem diffusion_closed_from_evidence (D : DiffusionPackage) (E : DiffusionEvidence D) : DiffusionClosed D := by
  exact And.intro E.diffusionEquationClosed (And.intro E.boundaryConditionsClosed E.initialConditionClosed)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse