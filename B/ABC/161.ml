let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest

let n, m = Scanf.sscanf (read_line()) "%d %d" (fun n m ->
  n, m
)

let a = read_line () |> String.split_on_char ' ' |> List.map int_of_string
let l = (float_of_int @@ sum a) /. (4. *. float_of_int m)
let foi x = float_of_int x

let rec ans lst =
  match lst with
  | [] -> 0
  | first :: rest ->
    if foi first < l then ans rest else 1 + ans rest

let _ = (
  if ans a < m then "No" else "Yes"
) |> print_endline

