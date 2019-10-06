#r "paket:
nuget FSharp.Core 4.6.0.0
// nuget FSharp.Core
nuget Fake.Core.Target
//"

open Fake.Core
open Fake.Core.TargetOperators


let shouldExecuteThat command =
  Trace.logfn "Will execute: '%s'" command

// *** Define Targets ***
Target.create "Build" <| fun _ ->
  Trace.log " --- Building the tests --- "
  "dotnet build Example.Domain"
  |> shouldExecuteThat

Target.create "Test" <| fun _ ->
  Trace.log " --- Executing tests --- "
  "dotnet test Example.UnitTests"
  |> shouldExecuteThat


// *** Define Dependencies ***
"Build" ==> "Test"


// *** Start Build ***
Target.runOrDefault "Test"
