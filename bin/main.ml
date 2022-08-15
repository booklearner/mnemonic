open Mnemonic

let print_version () =
  let version =
    match Build_info.V1.version () with
    | None -> "n/a"
    | Some v -> Build_info.V1.Version.to_string v
  in
  print_endline version;
  exit 0

let usage_msg = "mnemonic [options]"
let mnemonic_length = ref 24
let output_file = ref ""
let anon_fun _ = ()

let spec =
  [
    ( "-l",
      Arg.Set_int mnemonic_length,
      " Specify the length of the mnemonic phrase (default is 24)." );
    ( "-o",
      Arg.Set_string output_file,
      " Specify the file to write the output to (default is stdout)." );
    ( "--version",
      Arg.Unit print_version,
      " Display the version of the currently installed mnemonic." );
  ]

let main () =
  Arg.parse spec anon_fun usage_msg;
  let len = !mnemonic_length in
  let file = !output_file in
  match len with
  | 12 -> generate len file
  | 24 -> generate len file
  | _ -> failwith "Mnemonic phrase length must be 12 or 24"

let () =
  try main () with
  | Sys_error msg ->
      Printf.eprintf "Error: %s\n" msg;
      exit 1
  | exn ->
      Printf.eprintf "Error: %s\n" (Printexc.to_string exn);
      Printexc.print_backtrace stderr;
      exit 1
