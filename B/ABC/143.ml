(* 組み合わせ *)
let rec combination k list =
    if k <= 0 then [ [] ]
    else match list with
         | [] -> []
         | h :: tl ->
            let with_h = List.map (fun l -> h :: l) (combination (k-1) tl) in
            let without_h = combination k tl in
            with_h @ without_h
let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest

let n = read_int ()
let d = read_line () |> String.split_on_char ' ' |> List.map int_of_string
let a = List.map (fun a -> List.nth a 0 * List.nth a 1) @@ combination 2 d
let _ = Printf.printf "%d\n" @@ (sum a) 