(* 重複なし順列 *)
let rec perm n lst =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (perm (n - 1) (remove x lst)))
               lst
and remove x ls = List.filter (fun y -> x <> y) ls
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)


(* 重複順列 *)
let rec dup_perm n lst =
  if n = 0 then [[]]
  else flatmap (fun x -> List.map (fun y -> x :: y)
                                  (dup_perm (n - 1) lst))
               lst
and flatten = function
  [] -> []
| x::xs -> x @ (flatten xs)
and flatmap func ls = flatten (List.map func ls)

(* 組み合わせ *)
let rec combination k list =
    if k <= 0 then [ [] ]
    else match list with
         | [] -> []
         | h :: tl ->
            let with_h = List.map (fun l -> h :: l) (combination (k-1) tl) in
            let without_h = combination k tl in
            with_h @ without_h