let n, k = Scanf.sscanf (read_line()) "%d %d" (fun n k ->n, k)
let rec how_many n target =
  if n >= target then 0 else 1 + how_many (n*2) target

let rec n_loop i =
  if i > n then 0. else(
    ((1. /. 2.) ** (float_of_int @@ how_many i k)) *. (1. /. (float_of_int n)) +. (n_loop @@ i + 1))

let () = Printf.printf "%.8f\n" @@ n_loop 1