let n, k = Scanf.sscanf (read_line()) "%d %d" (fun n k ->
  n, k
)
let u = k * (n / k)
let _ = 
  (
    if n - u < abs (n - u - k) then n - u else abs (n - u - k)
  ) |> Printf.printf "%d\n"
