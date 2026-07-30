import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HomeostaticPlasticityPackage where
  synapticScaling : Prop
  metaplasticity : Prop
  bcmTheory : Prop
  slidingThreshold : Prop
  inputNormalization : Prop

structure HomeostaticPlasticityEvidence (P : HomeostaticPlasticityPackage) where
  synapticScalingClosed : P.synapticScaling
  metaplasticityClosed : P.metaplasticity
  bcmTheoryClosed : P.bcmTheory
  slidingThresholdClosed : P.slidingThreshold
  inputNormalizationClosed : P.inputNormalization

def HomeostaticPlasticityClosed (P : HomeostaticPlasticityPackage) : Prop :=
  P.synapticScaling ∧ P.metaplasticity ∧
  P.bcmTheory ∧ P.slidingThreshold ∧ P.inputNormalization

theorem homeostatic_plasticity_closed_from_evidence (P : HomeostaticPlasticityPackage) (E : HomeostaticPlasticityEvidence P) :
    HomeostaticPlasticityClosed P := by
  exact And.intro E.synapticScalingClosed
    (And.intro E.metaplasticityClosed
      (And.intro E.bcmTheoryClosed
        (And.intro E.slidingThresholdClosed E.inputNormalizationClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse