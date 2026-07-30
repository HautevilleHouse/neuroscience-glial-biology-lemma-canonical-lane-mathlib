import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure NeurovascularCouplingPackage where
  hemodynamicResponse : Prop
  boldSignalModel : Prop
  astrocyteEndfeetCoverage : Prop
  vasodilationMechanism : Prop
  metabolicDemandMatching : Prop

structure NeurovascularCouplingEvidence (P : NeurovascularCouplingPackage) where
  hemodynamicResponseClosed : P.hemodynamicResponse
  boldSignalModelClosed : P.boldSignalModel
  astrocyteEndfeetCoverageClosed : P.astrocyteEndfeetCoverage
  vasodilationMechanismClosed : P.vasodilationMechanism
  metabolicDemandMatchingClosed : P.metabolicDemandMatching

def NeurovascularCouplingClosed (P : NeurovascularCouplingPackage) : Prop :=
  P.hemodynamicResponse ∧ P.boldSignalModel ∧
  P.astrocyteEndfeetCoverage ∧ P.vasodilationMechanism ∧ P.metabolicDemandMatching

theorem neurovascular_coupling_closed_from_evidence (P : NeurovascularCouplingPackage) (E : NeurovascularCouplingEvidence P) :
    NeurovascularCouplingClosed P := by
  exact And.intro E.hemodynamicResponseClosed
    (And.intro E.boldSignalModelClosed
      (And.intro E.astrocyteEndfeetCoverageClosed
        (And.intro E.vasodilationMechanismClosed E.metabolicDemandMatchingClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse