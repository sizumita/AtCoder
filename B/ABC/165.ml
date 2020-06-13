let x = read_float ()

let rec loop i y =
  if y >= x then i else loop (i+1) (float_of_int @@ int_of_float @@ y *. 1.01)

let _ = Printf.printf "%d\n" @@ loop 0 100.