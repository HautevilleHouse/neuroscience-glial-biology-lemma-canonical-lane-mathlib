import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.NeuroGlialSignaling
import HautevilleHouse.NeuroscienceGlialBiologyLemmaCanonicalLaneLean.AstrocyteMetabolicCoupling

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure NeuroscienceGlialAdmittedObject where
  signaling : NeuroglialSignalingPathway
  signalingEvidence : NeuroglialSignalingEvidence signaling
  metabolic : AstrocyteMetabolicCoupling
  metabolicEvidence : AstrocyteMetabolicCouplingEvidence metabolic
  conclusion : NeuroglialSignalingClosed signaling ∧ AstrocyteMetabolicCouplingClosed metabolic

structure NeuroscienceGlialAdmissibleClass where
  object : NeuroscienceGlialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def NeuroscienceGlialWitnessClosed (O : NeuroscienceGlialAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : NeuroscienceGlialAdmissibleClass) : Prop :=
  NeuroscienceGlialWitnessClosed A.object

theorem bridge_from_admissible_class (A : NeuroscienceGlialAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : NeuroscienceGlialAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NeuroscienceGlialAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

defined ConstrainedNeuroGlialClosure (A : NeuroscienceGlialAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuro_glial_endgame (A : NeuroscienceGlialAdmissibleClass) :
    ConstrainedNeuroGlialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse