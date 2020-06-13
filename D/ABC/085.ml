(* Int: Int Dict *)
module Dict = Map.Make(Int)
class dict = object (self)
  val mutable entity = Dict.empty
  method entity = entity
  method keys = Dict.fold (fun key value a -> key :: a) entity []
  method values = Dict.fold (fun key value a -> key :: a) entity []
  method set key (value: int) = entity <- Dict.add key value entity
  method mem key = Dict.mem key entity
end
