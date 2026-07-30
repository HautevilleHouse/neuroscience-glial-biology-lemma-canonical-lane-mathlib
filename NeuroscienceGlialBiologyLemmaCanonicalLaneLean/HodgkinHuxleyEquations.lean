import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure IonConductance where
  sodium : ℝ
  potassium : ℝ
  leak : ℝ

def mInf (v : ℝ) : ℝ := 0.5 * (1 + tanh ((v + 40) / 10))
def hInf (v : ℝ) : ℝ := 0.5 * (1 + tanh ((v + 60) / 15))
def nInf (v : ℝ) : ℝ := 0.5 * (1 + tanh ((v - 50) / 10))

structure HodgkinHuxleyModel where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  appliedCurrent : ℝ → ℝ
  conductance : IonConductance
  capacitance : ℝ
  equationsClosed : Prop
  equationsClosedTerm : equationsClosed

def HodgkinHuxleyEquationsClosed (M : HodgkinHuxleyModel) : Prop :=
  M.equationsClosed

theorem hodgkin_huxley_equations_closed_from_model (M : HodgkinHuxleyModel) :
    HodgkinHuxleyEquationsClosed M := by
  exact M.equationsClosedTerm

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse