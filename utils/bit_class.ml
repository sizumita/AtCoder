class bit_search n = object (self) 
  (* method search func = *)
    (* func bit (bit列のりすと) *)
    (* let rec loop bit =
      if bit < int_of_float @@ 2. ** (float_of_int n) then 
        func bit (self#int_to_list bit n) 
      else ()
    in loop 0 *)

  method s func = List.init (int_of_float @@ 2. ** (float_of_int n)) (fun bit -> func bit (self#int_to_list bit n)+1)  

  method int_to_list bit n =
    let rec get i =
    match i with 
    | i when i = n -> []
    | _ -> if bit land (1 lsl i) = 0 then 0 :: get (i+1) else 1 :: get (i+1)
    in get 0

end
