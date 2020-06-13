let rec loop i k ans =
  if i > k then ans else
  if (String.length @@ string_of_int i) mod 2 = 1 then loop (i+1) k (ans+1) else loop (i+1) k ans

let _ = Printf.printf "%d\n" @@ loop 1 (read_int ()) 0