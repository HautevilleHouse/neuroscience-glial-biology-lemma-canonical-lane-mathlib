import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure AstrocyteCalciumSignalingPackage where
  ip3ReceptorDynamics : Prop
  calciumInducedCalciumRelease : Prop
  gliotransmitterRelease : Prop
  synapticCoverage : Prop
  metabolicCoupling : Prop

structure AstrocyteCalciumSignalingEvidence (P : AstrocyteCalciumSignalingPackage) where
  ip3ReceptorDynamicsClosed : P.ip3ReceptorDynamics
  calciumInducedCalciumReleaseClosed : P.calciumInducedCalciumRelease
  gliotransmitterReleaseClosed : P.gliotransmitterRelease
  synapticCoverageClosed : P.synapticCoverage
  metabolicCouplingClosed : P.metabolicCoupling

def AstrocyteCalciumSignalingClosed (P : AstrocyteCalciumSignalingPackage) : Prop :=
  P.ip3ReceptorDynamics ∧ P.calciumInducedCalciumRelease ∧
  P.gliotransmitterRelease ∧ P.synapticCoverage ∧ P.metabolicCoupling

theorem astrocyte_calcium_signaling_closed_from_evidence (P : AstrocyteCalciumSignalingPackage) (E : AstrocyteCalciumSignalingEvidence P) :
    AstrocyteCalciumSignalingClosed P := by
  exact And.intro E.ip3ReceptorDynamicsClosed
    (And.intro E.calciumInducedCalciumReleaseClosed
      (And.intro E.gliotransmitterReleaseClosed
        (And.intro E.synapticCoverageClosed E.metabolicCouplingClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse