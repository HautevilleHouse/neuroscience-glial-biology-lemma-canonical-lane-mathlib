import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure NeuroscienceGlialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroscienceGlialAdmittedObject where
  space : NeuroscienceGlialSpace
  glialBiologyLemma : Prop
  conclusion : glialBiologyLemma

def NeuroscienceWitnessClosed (O : NeuroscienceGlialAdmittedObject) : Prop :=
  O.glialBiologyLemma

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
