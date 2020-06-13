let n = read_int ()
let p = read_line () |> String.split_on_char ' ' |> List.map int_of_string
let rec loop lst mined ans =
  match lst with
  | [] -> ans
  | first :: rest ->
    if first < mined then loop rest (min mined first) (1+ans) else loop rest (min mined first) (ans)

let _ = Printf.printf "%d\n" @@ loop p max_int 0
