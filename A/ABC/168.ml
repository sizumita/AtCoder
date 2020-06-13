(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let n = List.rev (read_line() |> explode) |> List.hd
let _ = (if n = '2' || n = '4' || n = '5' || n = '7' || n = '9' then "hon" else if n = '3' then "bon" else "pon") |> print_endline