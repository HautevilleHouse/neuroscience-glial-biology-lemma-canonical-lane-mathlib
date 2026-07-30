import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure GlialCalciumPackage where
  intracellularCalcium : ℝ → ℝ
  ip3Concentration : ℝ → ℝ
  erRelease : Prop
  calciumWave : Prop
  astrocyteCoupling : Prop
  erReleaseTerm : erRelease
  calciumWaveTerm : calciumWave
  astrocyteCouplingTerm : astrocyteCoupling

structure GlialCalciumEvidence (G : GlialCalciumPackage) where
  erReleaseClosed : G.erRelease
  calciumWaveClosed : G.calciumWave
  astrocyteCouplingClosed : G.astrocyteCoupling

def GlialCalciumClosed (G : GlialCalciumPackage) : Prop :=
  G.erRelease ∧ G.calciumWave ∧ G.astrocyteCoupling

theorem glial_calcium_closed_from_evidence (G : GlialCalciumPackage) (E : GlialCalciumEvidence G) : GlialCalciumClosed G := by
  exact And.intro E.erReleaseClosed (And.intro E.calciumWaveClosed E.astrocyteCouplingClosed)

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse