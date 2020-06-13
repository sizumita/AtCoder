let n = read_int ()
let h = Array.init n (fun a -> Scanf.scanf " %d" @@ fun b -> b)

let dp = Array.init 100010 @@ fun a -> max_int
let _ = dp.(0) <- 0

let change i w =
  if dp.(i) > dp.(i-w) + (abs @@ h.(i) - h.(i-w)) then dp.(i) <- dp.(i-w) + (abs @@ h.(i) - h.(i-w))


let rec loop i =
  if i >= n then dp.(n-1) else (
    change i 1; 
    if i > 1 then change i 2 else ();
    loop (i+1)
    )


let _ = Printf.printf "%d\n" @@ loop 1
