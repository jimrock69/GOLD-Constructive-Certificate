import Lake
open Lake DSL

package "goldbach" where
  settings := #[
    -- Add any specific compiler flags here
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «Goldbach» where
  -- lib settings
  roots := #[`Goldbach]
  precompileModules := true