(* charのカウント *)
let count_char target str =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode str

let _ = 
  let d =read_line () |> count_char '9'
  in (if d != 0 then "Yes" else "No") |> print_endline