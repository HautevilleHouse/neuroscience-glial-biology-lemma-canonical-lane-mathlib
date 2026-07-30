import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse