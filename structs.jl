struct OneWrappedInt
  x::Cint
end

struct TwoWrappedInts
  x::Cint
  y::Cint
end

println("This should print \"1\" :")
ccall((:print_one,"structs"), Cvoid, (OneWrappedInt,), OneWrappedInt(1))
println("This should print \"1 2\" :")
ccall((:print_two,"structs"), Cvoid, (TwoWrappedInts,), TwoWrappedInts(1,2))