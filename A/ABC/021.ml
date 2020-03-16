let n = read_int ()
let rec p_list lst =
  match lst with
  | [] -> ()
  | first :: rest -> Printf.printf "%d\n" first; p_list rest

let rec get_2 s =
  match s with
  | 0 -> []
  | _ -> 2 :: get_2 (s-1)

let _ = if n mod 2 = 1 then p_list ([(n / 2 + 1)] @ (get_2 (n/2)) @ [1]) else p_list ([n/2] @ get_2 (n/2)) 