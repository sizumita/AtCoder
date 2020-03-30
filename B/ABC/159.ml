let reverse s = let len = String.length s in
  String.init len (fun i -> s.[len - 1 - i])
let cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))
let get num str = String.init num (fun a -> String.get str a)
let s = read_line ()
let n = String.length s
let before = get (n/2) s
let after = cut (n/2+1) s
let before_n = String.length before
let after_n = String.length after

let b_b = get (before_n/2) before
let b_a = reverse @@ if before_n mod 2 = 0 then cut (before_n/2) before else cut (before_n/2+1) before
let a_b = get (after_n/2) after
let a_a = reverse @@ if after_n mod 2 = 0 then cut (after_n/2) after else cut (after_n/2+1) after

let _ = (if before = after && b_b = b_a && a_b = a_a then "Yes" else "No") |> print_endline
