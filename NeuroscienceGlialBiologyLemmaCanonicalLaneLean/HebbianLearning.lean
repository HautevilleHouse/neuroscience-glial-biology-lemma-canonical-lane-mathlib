import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure SynapticPlasticityRule where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  weightChange : ℝ
  learningRate : ℝ
  hebbian : Prop
  hebbianTerm : hebbian

def HebbianUpdate (rule : SynapticPlasticityRule) : ℝ :=
  rule.learningRate * rule.preSynapticActivity * rule.postSynapticActivity

structure HebbianLearningModel where
  weightMatrix : ℝ → ℝ → ℝ
  plasticityRule : SynapticPlasticityRule
  stablization : Prop
  stablizationTerm : stablization

def HebbianLearningClosed (H : HebbianLearningModel) : Prop :=
  H.stablization

theorem hebbian_learning_closed_from_model (H : HebbianLearningModel) :
    HebbianLearningClosed H := by
  exact H.stablizationTerm

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse