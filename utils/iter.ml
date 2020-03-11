(* 重複なし順列 *)
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

