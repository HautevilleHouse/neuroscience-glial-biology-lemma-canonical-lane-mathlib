import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  vertexSet : Type u
  edgeSet : Type v
  synapticWeight : edgeSet → ℝ
  directed : Bool
  weighted : Bool
  smallWorldProperty : Prop
  modularStructure : Prop
  smallWorldPropertyTerm : smallWorldProperty
  modularStructureTerm : modularStructure

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.smallWorldPropertyClosed E.modularStructureClosed

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse