let r = read_int ()
let _ =
  (match r with
  | r when r >= 2800 -> "AGC"
  | r when r >= 1200 -> "ARC"
  | _ -> "ABC") |> Printf.printf "%s\n"