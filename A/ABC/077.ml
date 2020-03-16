(* 文字列を逆にする *)
let reverse s = let len = String.length s in
  String.init len (fun i -> s.[len - 1 - i])

let c1 = read_line () |> reverse
let c2 = read_line ()
let _ = (if c1 = c2 then "YES" else "NO") |> print_endline