let generate length output_file =
  let oc = if output_file = "" then Stdlib.stdout else open_out output_file in
  Printf.fprintf oc "%d\n" length
