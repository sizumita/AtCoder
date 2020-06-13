let n, k = Scanf.sscanf (read_line()) "%d %d" (fun n k -> n,k)
let dp = Array.init n @@ fun a -> 0
let rec loop i =
  if i >= k then () else
  (
    let _ = read_int () in
    List.iter (fun b -> dp.(b-1) <- 1 + dp.(b-1)) @@ (read_line () |> String.split_on_char ' ' |> List.map int_of_string);
    loop (i+1)
  )

let _ = loop 0

let _ = Printf.printf "%d\n" @@ List.fold_left (fun a b -> if b != 0 then a else 1 + a) 0 (Array.to_list dp)



