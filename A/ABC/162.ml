(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let n = read_line() |> explode
let _ = (if List.mem '7' n then "Yes" else "No") |> print_endline