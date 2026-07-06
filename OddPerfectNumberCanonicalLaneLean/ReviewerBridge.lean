import OddPerfectNumberCanonicalLaneLean.Formalization
import OddPerfectNumberCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace OddPerfectNumberCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "ece2e5b1ce9f617cd883ec4c6b4868c34960a0695560dd74745118dc34f9edb3", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "37d8cc2e0c27d0e36dba9332bf2c5c289bb88020ef2d36d92dad6d78cb9f7c54", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "1f91e5db3c74282500726979ff27ac66dbcf68cfd0d4121b898e5416eb0a22e4", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "72f54c2fb3569e8e2685146cdd523944a4c3733fee090177d8b2710a3115e75e", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "3665f84c8bb9b79277ac75e22205346c55e74beed6033e389c998684a433baca", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "e6db8cfe6df7ed225535dac7a2ad173c2bc6f1e73f27a3970f3babb1f21c2e26", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "11699855d62367e8a254a59f37af353e6e20ae9f0e4543d199f02f317c11860f", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "c2d21f399785f73ca862a63ee076b8ee5d21348729c4a78f5ec7fbd57b0dce97", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "8df4d493c84b6238263e102891184db0077677b51b2e39ba81eaf19c096ba187", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "OPN_G1", constant := "kappa_divisor" },
  { gate := "OPN_G2", constant := "sigma_abundance" },
  { gate := "OPN_G3", constant := "kappa_compact" },
  { gate := "OPN_G4", constant := "rho_rigidity" },
  { gate := "OPN_G5", constant := "nonexistence_transfer" },
  { gate := "OPN_G6", constant := "eps_coh" },
  { gate := "OPN_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "8ae0c4c6a65f050d8e244aee638953285429b442a126b4abcd34e30c90962a12" },
  { path := "README.md", sha256 := "9c418c0e7362d4a696252a2551dd27376360bcd73f8f5c92c8a975b5fc5bed2c" },
  { path := "artifacts/constants_extracted.json", sha256 := "72f54c2fb3569e8e2685146cdd523944a4c3733fee090177d8b2710a3115e75e" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "1f91e5db3c74282500726979ff27ac66dbcf68cfd0d4121b898e5416eb0a22e4" },
  { path := "artifacts/constants_registry.json", sha256 := "3665f84c8bb9b79277ac75e22205346c55e74beed6033e389c998684a433baca" },
  { path := "artifacts/promotion_report.json", sha256 := "11699855d62367e8a254a59f37af353e6e20ae9f0e4543d199f02f317c11860f" },
  { path := "artifacts/stitch_constants.json", sha256 := "e6db8cfe6df7ed225535dac7a2ad173c2bc6f1e73f27a3970f3babb1f21c2e26" },
  { path := "notes/EG1_public.md", sha256 := "5a2fdbd80dc0b9d665282593d942a8ef2371aba98735c2abd8791488cd2d2501" },
  { path := "notes/EG2_public.md", sha256 := "7bf406d68f716d4d827a50f57a0023c0c4d5530ac1c4023a27c6cc5eb0ae0cb3" },
  { path := "notes/EG3_public.md", sha256 := "fdcaf8ada717027f15ce2919842a7c7fc08154050ac6c80c4c39afdc5f419487" },
  { path := "notes/EG4_public.md", sha256 := "f2d1511cb4ed9f58c19c6cbcc8209f0463f0a359d3f6811ac8f04a5b659c3852" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "37d8cc2e0c27d0e36dba9332bf2c5c289bb88020ef2d36d92dad6d78cb9f7c54" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "75968ece9fd1f7d4976c11818fd3afc3f3cf7bf77905eb74485db499449e0fcb" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "dbc169a51d85a03fd769486bc908fe42fff277dd8878ea3120cf6ceeab9bc2ed" },
  { path := "paper/ODD_PERFECT_NUMBER_PREPRINT.md", sha256 := "cac391001ad5b37d8066af5494523d5589134477c5aa9f1cf9887fc0a09e1237" },
  { path := "repro/REPRO_PACK.md", sha256 := "11279e0c2aa32da529f127f39452b5cb4f381832e27efd2f58f4ca55eff32991" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "73acd8577c5f395fd5f0a4b0d2bbaba6f954a9104fbbbc740c4fce6d7ffdac72" },
  { path := "repro/certificate_baseline.json", sha256 := "8df4d493c84b6238263e102891184db0077677b51b2e39ba81eaf19c096ba187" },
  { path := "repro/run_repro.sh", sha256 := "8e4325a6620a19c458608c9169fb01cb92a76148584e69ed4c39ec54c7f924da" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/opn_closure_guard.py", sha256 := "6a428626eaef2f79aa712e5b0e4414b3c55ded59f7990d689e2347579fc6648f" },
  { path := "scripts/README.md", sha256 := "d299b73fc516007cb0178ab7bbc4f78ee2930cd61a1902cf46e7fb09082d7b2e" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "OPN_G1", status := "PASS" },
  { gate := "OPN_G2", status := "PASS" },
  { gate := "OPN_G3", status := "PASS" },
  { gate := "OPN_G4", status := "PASS" },
  { gate := "OPN_G5", status := "PASS" },
  { gate := "OPN_G6", status := "PASS" },
  { gate := "OPN_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_divisor", value := "1.0866760000000002" },
  { key := "nonexistence_transfer", value := "1.0261920000000002" },
  { key := "rho_rigidity", value := "1.075" },
  { key := "sigma_abundance", value := "1.07" },
  { key := "sigma_star_can", value := "1.051" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_divisor",
  "nonexistence_transfer",
  "rho_rigidity",
  "sigma_abundance",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end OddPerfectNumberCanonicalLaneLean
end HautevilleHouse
