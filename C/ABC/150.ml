let rec perm n ls =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (perm (n - 1) (remove x ls)))
               ls
and remove x ls = List.filter (fun y -> x <> y) ls
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)


let n = read_int ()
let rec m lst =
  match lst with
   [] -> ""
  | first :: rest -> first ^ m rest
let p = m (read_line () |> String.split_on_char ' ')
let q = m (read_line () |> String.split_on_char ' ')
let rec g k =
  match k with
   0 -> []
  | _ -> k :: g (k-1)
let all = 
  let rec h lst =
    match lst with
     [] -> []
    | first :: rest -> m(List.map string_of_int first) :: h rest
  in List.sort compare (h(perm n (g n)))

let _ = 
  let rec o target l s =
    match l with
     [] -> 0
    | first :: rest -> if first = target then s else o target rest (s+1)
  in let jj t = if t < 0 then t * (-1) else t
    in print_endline(string_of_int (jj( (o p all 1) - (o q all 1))))



