import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

def ConstrainedGlialBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glial_biology_endgame (A : AdmissibleClass) :
    ConstrainedGlialBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse