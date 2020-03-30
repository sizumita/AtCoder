let average lst =
  let rec sum lst =
    match lst with
    | [] -> 0
    | first :: rest -> first + sum rest
  in (float_of_int @@ sum lst) /. (float_of_int @@ List.length lst)
let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest

type nkm_ = { n : int; k : int; m : int}

let nkm = Scanf.sscanf (read_line()) "%d %d %d" (fun n k m ->
  {n=n; k=k; m=m}
)

let a_list = read_line () |> String.split_on_char ' ' |> List.map int_of_string

let dream = nkm.m * nkm.n
let diff = dream - (sum a_list)
let _ = (if diff < 0 then 0 else if diff <= nkm.k then diff else -1 ) |> Printf.printf "%d\n"

