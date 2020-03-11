let rec fizzbuzz s e =
  match s with
  | s when s = e -> ()
  | s when s mod 15 = 0 -> print_endline "fizzbuzz"; fizzbuzz (s+1) e
  | s when s mod 3 = 0 -> print_endline "fizz"; fizzbuzz (s+1) e
  | s when s mod 5 = 0 -> print_endline "buzz"; fizzbuzz (s+1) e
  | _ -> print_endline (string_of_int s); fizzbuzz (s+1) e

let _ = fizzbuzz 1 100