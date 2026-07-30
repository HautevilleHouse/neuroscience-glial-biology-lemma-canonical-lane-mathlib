import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GlialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse