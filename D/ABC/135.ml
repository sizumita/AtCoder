(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let dp = Array.make_matrix 100 2 0
let _ = dp.(0).(1) <- 1
let s = read_line ()
let zero = int_of_char '0'
let s_array = explode s |> List.map (fun b -> if b = '?' then '9' else b) |> List.map int_of_char |> Array.of_list
let rec zero_to_zero_loop i j k =
  if j >= k then () else
  (dp.(i+1).(0) <- dp.(i+1).(0) + dp.(i).(0); zero_to_zero_loop i (j+1) k)

let rec one_to_zero_loop i j k =
  if j >= k then () else
  (dp.(i+1).(0) <- dp.(i+1).(0) + dp.(i).(1); one_to_zero_loop i (j+1) k)

let rec loop i k =
  if i >= k then () else (
    zero_to_zero_loop i 0 10;
    one_to_zero_loop i 0 (s_array.(i) - zero);
    dp.(i+1).(1) <- dp.(i+1).(1) + dp.(i).(1);
    loop (i+1) k
  )

let _ = loop 0 (String.length s)
let _ = Printf.printf "%d\n" (dp.(String.length s).(0) + dp.(String.length s).(1))
