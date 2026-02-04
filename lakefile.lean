import Lake
open Lake DSL

package «afferent-chat» where
  version := v!"0.1.0"

-- Common link arguments for executables (macOS frameworks + curl)
def commonLinkArgs : Array String := #[
  "-framework", "Metal",
  "-framework", "Cocoa",
  "-framework", "QuartzCore",
  "-framework", "Foundation",
  "-framework", "Security",
  "-framework", "SystemConfiguration",
  "-lobjc",
  "-L/opt/homebrew/lib",
  "-L/usr/local/lib",
  "-lfreetype",
  "-lassimp",
  "-lz",
  "-lc++",
  "-lcurl"
]

require crucible from git "https://github.com/nathanial/crucible" @ "v0.0.10"
require plausible from git "https://github.com/leanprover-community/plausible" @ "v4.18.0"
require chronos from git "https://github.com/nathanial/chronos-lean" @ "v0.0.8"
require chronicle from git "https://github.com/nathanial/chronicle" @ "v0.0.3"
require wisp from git "https://github.com/nathanial/wisp" @ "v0.0.2"
require oracle from git "https://github.com/nathanial/oracle" @ "v0.2.0"
require reactive from git "https://github.com/nathanial/reactive" @ "v0.2.2"
require linalg from git "https://github.com/nathanial/linalg" @ "v0.0.5"
require sift from git "https://github.com/nathanial/sift" @ "v0.0.12"
require staple from git "https://github.com/nathanial/staple" @ "v0.0.4"
require shader from git "https://github.com/nathanial/shader" @ "v0.1.0"
require tincture from git "https://github.com/nathanial/tincture" @ "v0.0.2"
require trellis from git "https://github.com/nathanial/trellis" @ "v0.0.18"
require assimptor from git "https://github.com/nathanial/assimptor" @ "v0.0.2"
require raster from git "https://github.com/nathanial/raster" @ "v0.0.5"
require afferent from git "https://github.com/nathanial/afferent" @ "v0.0.16"

@[default_target]
lean_lib AfferentChat where
  roots := #[`AfferentChat]

lean_lib Tests where
  roots := #[`Tests]

@[test_driver]
lean_exe «afferent-chat_tests» where
  root := `Tests.Main
  moreLinkArgs := commonLinkArgs
