(* 出てきたsの個数をカウント *)
let rec count_string s text =
  let rec slicing str target =
    match str with
    | t when String.length t = String.length target -> if t = target then 1 else 0
    | t -> if get (String.length str) target = str then 1 + slicing str (cut 1 target) else slicing str (cut 1 target)
  in slicing s text
and get num str = String.init num (fun a -> String.get str a)
and cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))

let n = read_int ()
let s = read_line ()

let _ = Printf.printf "%d\n" @@ count_string "ABC" s 