import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  hebbianRule : Prop
  weightBounds : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  hebbianRuleTerm : hebbianRule
  weightBoundsTerm : weightBounds
  longTermPotentiationTerm : longTermPotentiation
  longTermDepressionTerm : longTermDepression

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  weightBoundsClosed : H.weightBounds
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.weightBounds ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed (And.intro E.weightBoundsClosed (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse