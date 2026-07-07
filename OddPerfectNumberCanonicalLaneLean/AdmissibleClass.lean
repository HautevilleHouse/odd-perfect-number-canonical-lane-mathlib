import OddPerfectNumberCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace OddPerfectNumberCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end OddPerfectNumberCanonicalLaneLean
end HautevilleHouse
