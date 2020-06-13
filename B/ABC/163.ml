let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest

let n, m = Scanf.sscanf (read_line()) "%d %d" (fun n m ->n,m
)
let a = read_line () |> String.split_on_char ' ' |> List.map int_of_string
let _ = (if sum a > n then -1 else n - (sum a)) |> Printf.printf "%d\n"