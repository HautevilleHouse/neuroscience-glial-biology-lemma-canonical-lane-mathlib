import NeuroscienceGlialBiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure GlialAdmittedObject where
  synapseContext : Type
  glialModulation : Prop
  hebbianPlasticity : Prop
  neuralFieldDynamics : Prop
  glialRegulationClosed : Prop

structure GlialEndgameState where
  object : GlialAdmittedObject
  bridgeWitness : GlialAdmittedObject → Prop

def GlialWitnessClosed (O : GlialAdmittedObject) : Prop :=
  O.glialRegulationClosed

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
