(* charのカウント *)
let count_char target str =
  let rec count lst =
    match lst with
    | [] -> 0
    | first :: rest -> if first = target then 1 + count rest else count rest
  in let explode s = List.init (String.length s) (String.get s)
  in count @@ explode str

let _ = Printf.printf "%d\n" (count_char '1' (read_line ()))
