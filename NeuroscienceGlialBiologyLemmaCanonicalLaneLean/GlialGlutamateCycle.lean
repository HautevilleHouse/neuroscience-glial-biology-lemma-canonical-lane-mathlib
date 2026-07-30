import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure GlialGlutamateCyclePackage where
  synapticCleft : Type u
  glutamateTransporters : Type v
  glutamineSynthetase : Type w
  uptakeKinetics : Prop
  recyclingEfficiency : Prop
  metabolicCoupling : Prop
  neurotoxicityPrevention : Prop

structure GlialGlutamateCycleEvidence (G : GlialGlutamateCyclePackage) where
  uptakeKineticsClosed : G.uptakeKinetics
  recyclingEfficiencyClosed : G.recyclingEfficiency
  metabolicCouplingClosed : G.metabolicCoupling
  neurotoxicityPreventionClosed : G.neurotoxicityPrevention

def GlialGlutamateCycleClosed (G : GlialGlutamateCyclePackage) : Prop :=
  G.uptakeKinetics ∧ G.recyclingEfficiency ∧ G.metabolicCoupling ∧ G.neurotoxicityPrevention

theorem glial_glutamate_cycle_closed_from_evidence (G : GlialGlutamateCyclePackage)
    (E : GlialGlutamateCycleEvidence G) : GlialGlutamateCycleClosed G := by
  exact And.intro E.uptakeKineticsClosed
    (And.intro E.recyclingEfficiencyClosed
      (And.intro E.metabolicCouplingClosed E.neurotoxicityPreventionClosed))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
