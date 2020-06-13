let n, m = Scanf.sscanf (read_line()) "%d %d" (fun n m -> n,m)
let h = read_line () |> String.split_on_char ' ' |> List.map int_of_string |> Array.of_list
let dp = Array.init n @@ fun a -> 0
let rec loop i =
  if i >= m then () else (
    Scanf.sscanf (read_line()) "%d %d" (fun a b -> 
    if h.(a-1) > h.(b-1) then dp.(b-1) <- 1 else 
    if h.(a-1) < h.(b-1) then dp.(a-1) <- 1 else
    (dp.(a-1) <- 1; dp.(b-1) <- 1) 
    );
    loop (i+1)
  )
let _ = loop 0
let _ = Printf.printf "%d\n" @@ List.fold_left (fun a b -> if b != 0 then a else 1 + a) 0 (Array.to_list dp)
