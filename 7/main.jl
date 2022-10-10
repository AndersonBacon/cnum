using LinearAlgebra

function fixedpoint(a,g, erro)
x=g(a)
while norm(x-a) > erro
a=x
x=g(a)
end
return x
end

F(x) = [((x[1]^2)/3 + x[2]^2 -1) ;
      ((x[1]^2) + (x[2]^2)/4 - 1)]

J(x) = [(2*x[1]/3) (2*x[2])
        (2*x[1]) (x[2]/2)]

g(x) = x - (inv(J(x))*F(x))

erro = 10^-8

x = [1 ; 1]

r = fixedpoint(x, g, erro)
println(r)