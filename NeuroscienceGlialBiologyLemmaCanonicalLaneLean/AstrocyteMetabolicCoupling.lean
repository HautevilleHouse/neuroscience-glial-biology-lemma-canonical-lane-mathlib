import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure AstrocyteMetabolicCoupling where
  neuron : Type
  astrocyte : Type
  glutamateUptake : Prop
  lactateShuttle : Prop
  potassiumBuffering : Prop
  neurovascularCoupling : Prop
  energySubstrateProvision : Prop

structure AstrocyteMetabolicCouplingEvidence (A : AstrocyteMetabolicCoupling) where
  glutamateUptakeClosed : A.glutamateUptake
  lactateShuttleClosed : A.lactateShuttle
  potassiumBufferingClosed : A.potassiumBuffering
  neurovascularCouplingClosed : A.neurovascularCoupling
  energySubstrateProvisionClosed : A.energySubstrateProvision

def AstrocyteMetabolicCouplingClosed (A : AstrocyteMetabolicCoupling) : Prop :=
  A.glutamateUptake ∧ A.lactateShuttle ∧
  A.potassiumBuffering ∧ A.neurovascularCoupling ∧
  A.energySubstrateProvision

theorem astrocyte_metabolic_coupling_closed_from_evidence
    (A : AstrocyteMetabolicCoupling) (E : AstrocyteMetabolicCouplingEvidence A) :
    AstrocyteMetabolicCouplingClosed A := by
  exact And.intro E.glutamateUptakeClosed
    (And.intro E.lactateShuttleClosed
      (And.intro E.potassiumBufferingClosed
        (And.intro E.neurovascularCouplingClosed
          E.energySubstrateProvisionClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse