import Lake
open Lake DSL

package "goldbach" where
  -- Settings applied to both it and its dependencies
  settings := #[
    -- Add any specific compiler flags here
  ]

@[default_target]
lean_lib «Goldbach» where
  -- lib settings