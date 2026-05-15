import Lake
open Lake DSL

package "goldbach" where
  -- 'moreLeanArgs' replaces 'settings' for compiler flags
  moreLeanArgs := #[
    "-DautoImplicit=false" -- Recommended to ensure rigorous proof checking
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «Goldbach» where
  -- lib settings
  roots := #[`Goldbach]
  precompileModules := true