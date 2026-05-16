import Lake
open Lake DSL

package «verification_code» where
  -- The field name for v4.27.0 is 'preferReleaseBuild'
  preferReleaseBuild := true

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.27.0"

@[default_target]
lean_lib «Goldbach» where
  buildType := .release