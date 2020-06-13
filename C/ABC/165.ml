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


let n, m, q = Scanf.sscanf (read_line()) "%d %d %d" (fun n m q ->
  n, m, q
)
let abcd = List.init q @@ fun a ->Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c d ->
  (a,b,c,d)
)

let a_list = dup_perm n @@ List.init m @@ fun b -> b+1


let rec check target lst ans =
  match lst with
  | [] -> ans
  | first :: rest ->
    let a,b,c,d = first in
    if target.(b-1) - target.(a-1) = c then check target rest (d+ans) else check target rest ans


let rec loop lst ans =
  match lst with
  | [] -> ans
  | first :: rest -> (
    let target = List.sort compare first |> Array.of_list in
    let r = check target abcd 0 in if r > ans then loop rest r else loop rest ans
  )

let _ = Printf.printf "%d\n" @@ loop a_list 0




