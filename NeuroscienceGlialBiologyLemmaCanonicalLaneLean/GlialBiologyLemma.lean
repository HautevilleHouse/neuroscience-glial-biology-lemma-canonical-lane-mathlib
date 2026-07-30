import NeuroscienceGlialBiologyLemmaCanonicalLaneLean.Connectomics
import NeuroscienceGlialBiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure GlialBiologyLemma {H : HodgkinHuxleyPDE} {P : HebbianPlasticity H} {N : NeuralFieldTheory H P} {C : Connectomics N} (A : AdmissibleClass) where
  hodgkinHuxleyClosed : HodgkinHuxleyClosed H
  hebbianClosed : HebbianClosed P
  neuralFieldClosed : NeuralFieldClosed N
  connectomicsClosed : ConnectomicsClosed C

def GlialBiologyClosed {H : HodgkinHuxleyPDE} {P : HebbianPlasticity H} {N : NeuralFieldTheory H P} {C : Connectomics N} (L : GlialBiologyLemma C) : Prop :=
  L.hodgkinHuxleyClosed ∧ L.hebbianClosed ∧ L.neuralFieldClosed ∧ L.connectomicsClosed

def ConstrainedGlialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem glial_biology_closed_from_evidence {H : HodgkinHuxleyPDE} {P : HebbianPlasticity H} {N : NeuralFieldTheory H P} {C : Connectomics N} (L : GlialBiologyLemma C) (E : GlialBiologyClosed L) : GlialBiologyClosed L := E

theorem constrained_glial_endgame (A : AdmissibleClass) : ConstrainedGlialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
