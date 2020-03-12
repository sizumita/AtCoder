let n = read_int ()
let _ =
  (match n with
  | n when n = 100 -> "Perfect"
  | n when n >= 90 -> "Great"
  | n when n >= 60 -> "Good"
  | _ -> "Bad") |> Printf.printf "%s\n"