let _ = Scanf.sscanf (read_line()) "%s %s %s" (fun r g b ->
  if (int_of_string (r ^ g ^ b)) mod 4 = 0 then "YES" else "NO"
) |> print_endline