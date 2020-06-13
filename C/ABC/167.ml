(* bitの数字の2真数の時の右からn番目の数字が0か1か *)
let is_bit_one bit n = if bit land (1 lsl n) = 0 then false else true
let bit_list bit n =
  let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if is_bit_one bit i then i :: get (i+1) else get (i+1)
  in get 0
(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)

let n, m, x = Scanf.sscanf (read_line()) "%d %d %d" (fun n m x -> n,m,x)

let sankousyo =
  Array.init n @@ fun a -> let k = read_line () |> String.split_on_char ' ' |> List.map int_of_string in (List.hd k, List.tl k |> Array.of_list)

let rec up_rikaido rikaido i up_rikaido_array =
  if i >= Array.length up_rikaido_array then rikaido else (rikaido.(i) <- rikaido.(i) + up_rikaido_array.(i); up_rikaido rikaido (i+1) up_rikaido_array)

let check target_sankousyo_array =
  let rec check_loop i rikaido =
    if i >= Array.length target_sankousyo_array then rikaido else
    (
      let _, up_rikaido_array = target_sankousyo_array.(i) in
      check_loop (i+1) (up_rikaido rikaido 0 up_rikaido_array)
    ) 
    in if Array.fold_left (fun a b -> if b >= x && a = true then true else false) true (check_loop 0 (Array.init m @@ fun _ -> 0)) then 
    Array.fold_left (fun a b -> let c, _ = b in a + c) 0 target_sankousyo_array else max_int

let rec get_sankousyo lst =
  Array.init (List.length lst) @@ fun a -> sankousyo.(List.nth lst a)

let rec bit_loop bit =
  if bit >= n * n then max_int else (
    (* 処理 *)
    let j = check @@ get_sankousyo @@ bit_list bit n in
    min (j) (bit_loop (bit+1))
  )

let p = bit_loop 0
let _ = Printf.printf "%d\n" @@ (if p = max_int then -1 else p)

