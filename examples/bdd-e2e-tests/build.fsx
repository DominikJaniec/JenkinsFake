#r "paket:
nuget FSharp.Core 4.6.0.0
// nuget FSharp.Core
nuget Fake.Core.Target
//"

open Fake.Core
open Fake.Core.TargetOperators


// *** Define Targets ***
Target.create "Build" <| fun _ ->
  Trace.log " --- Building the tests --- "

Target.create "Test" <| fun _ ->
  Trace.log " --- Executing tests --- "


// *** Define Dependencies ***
"Build" ==> "Test"


// *** Start Build ***
Target.runOrDefault "Test"
