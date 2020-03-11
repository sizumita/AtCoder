let n = read_int ()
let h_list = read_line () |> String.split_on_char ' ' |> List.map int_of_string

let rec pp lst last =
  match lst with
  | [] -> []
  | first :: rest when last = -1 -> (first-1) :: pp rest (first-1)
  | first :: rest -> if first > last then (first-1) :: pp rest (first-1) else first :: pp rest first


let rec check lst last =
  match lst with
  | [] -> true
  | first :: rest when last = -1 -> check rest first
  | first :: rest -> if first < last then false else check rest first

let _ = if check (pp h_list (-1)) (-1) then print_endline "Yes" else print_endline "No"

