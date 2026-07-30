import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure GlialAdmittedObject where
  cellType : String
  morphologyRecorded : Prop
  electrophysiologyRecorded : Prop
  gapJunctionCoupled : Prop
  conclusion : gapJunctionCoupled

structure AdmissibleClass where
  object : GlialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GlialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse