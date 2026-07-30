import NeuroscienceGlialBiologyLemmaCanonicalLaneLean.HodgkinHuxleyPDE

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure HebbianPlasticity {H : HodgkinHuxleyPDE} where
  spikeTimingDependentPlasticity : Prop
  synapticWeightDynamics : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  glialModulation : Prop

structure HebbianEvidence {H : HodgkinHuxleyPDE} (P : HebbianPlasticity) where
  spikeTimingClosed : P.spikeTimingDependentPlasticity
  synapticWeightClosed : P.synapticWeightDynamics
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  glialModulationClosed : P.glialModulation

def HebbianClosed {H : HodgkinHuxleyPDE} (P : HebbianPlasticity) : Prop :=
  P.spikeTimingDependentPlasticity ∧ P.synapticWeightDynamics ∧ P.longTermPotentiation ∧ P.longTermDepression ∧ P.glialModulation

theorem hebbian_closed_from_evidence {H : HodgkinHuxleyPDE} (P : HebbianPlasticity) (E : HebbianEvidence P) : HebbianClosed P := by
  exact And.intro E.spikeTimingClosed (And.intro E.synapticWeightClosed (And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed E.glialModulationClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
