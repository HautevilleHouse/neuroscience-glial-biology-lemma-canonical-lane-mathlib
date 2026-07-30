import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure MyelinationPackage where
  myelinSheathFormation : Prop
  saltatoryConduction : Prop
  nodeOfRanvierStructure : Prop
  oligodendrocyteDifferentiation : Prop
  internodeDistanceOptimization : Prop

structure MyelinationEvidence (P : MyelinationPackage) where
  myelinSheathFormationClosed : P.myelinSheathFormation
  saltatoryConductionClosed : P.saltatoryConduction
  nodeOfRanvierStructureClosed : P.nodeOfRanvierStructure
  oligodendrocyteDifferentiationClosed : P.oligodendrocyteDifferentiation
  internodeDistanceOptimizationClosed : P.internodeDistanceOptimization

def MyelinationClosed (P : MyelinationPackage) : Prop :=
  P.myelinSheathFormation ∧ P.saltatoryConduction ∧
  P.nodeOfRanvierStructure ∧ P.oligodendrocyteDifferentiation ∧ P.internodeDistanceOptimization

theorem myelination_closed_from_evidence (P : MyelinationPackage) (E : MyelinationEvidence P) :
    MyelinationClosed P := by
  exact And.intro E.myelinSheathFormationClosed
    (And.intro E.saltatoryConductionClosed
      (And.intro E.nodeOfRanvierStructureClosed
        (And.intro E.oligodendrocyteDifferentiationClosed E.internodeDistanceOptimizationClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse