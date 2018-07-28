struct OneWrappedInt
  x::Float64
end

struct TwoWrappedInts
  x::Float64
  y::Float64
end

println("This should print \"1\" :")
ccall((:print_one,"structs"), Cvoid, (OneWrappedInt,), OneWrappedInt(1.0))
println("This should print \"1 2\" :")
ccall((:print_two,"structs"), Cvoid, (TwoWrappedInts,), TwoWrappedInts(1.0,2.0))