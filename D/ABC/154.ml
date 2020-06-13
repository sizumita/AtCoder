let n, k = Scanf.sscanf (read_line()) "%d %d" (fun n k ->n,k)
let dp = Array.init n @@ fun a -> 0.
let ex i = (1. +. (float_of_int i)) /. 2.

let a = Array.init n @@ fun _ -> Scanf.scanf " %d" @@ fun a -> ex a

let rec loop i =
  if i >= n then () else
  (dp.(i) <- dp.(i-1) +. a.(i); loop (i+1))

let _ = dp.(0) <- a.(0); loop 1


let rec loop1 j =
  if j + k >= n then min_float else
  max (dp.(j+k) -. dp.(j)) (loop1 @@ j+1)

let _ = Printf.printf "%.12f\n" @@ loop1 0

