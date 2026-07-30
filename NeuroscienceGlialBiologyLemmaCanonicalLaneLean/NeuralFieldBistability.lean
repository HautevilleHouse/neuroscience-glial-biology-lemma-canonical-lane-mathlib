import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlialBiologyLemmaCanonicalLaneLean

structure NeuralFieldBistabilityPackage where
  neuralPopulation : Type u
  connectivityKernel : Type v
  firingRateFunction : Type w
  stationaryStates : Prop
  bifurcationParameter : Prop
  stabilityAnalysis : Prop
  hysteresisLoop : Prop
  patternFormation : Prop

structure NeuralFieldBistabilityEvidence (N : NeuralFieldBistabilityPackage) where
  stationaryStatesClosed : N.stationaryStates
  bifurcationParameterClosed : N.bifurcationParameter
  stabilityAnalysisClosed : N.stabilityAnalysis
  hysteresisLoopClosed : N.hysteresisLoop
  patternFormationClosed : N.patternFormation

def NeuralFieldBistabilityClosed (N : NeuralFieldBistabilityPackage) : Prop :=
  N.stationaryStates ∧ N.bifurcationParameter ∧ N.stabilityAnalysis ∧
  N.hysteresisLoop ∧ N.patternFormation

theorem neural_field_bistability_closed_from_evidence (N : NeuralFieldBistabilityPackage)
    (E : NeuralFieldBistabilityEvidence N) : NeuralFieldBistabilityClosed N := by
  exact And.intro E.stationaryStatesClosed
    (And.intro E.bifurcationParameterClosed
      (And.intro E.stabilityAnalysisClosed
        (And.intro E.hysteresisLoopClosed E.patternFormationClosed)))

end NeuroscienceGlialBiologyLemmaCanonicalLaneLean
end HautevilleHouse
