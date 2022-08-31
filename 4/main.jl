using .MathConstants: e

erro = 10^-8

function fixedpoint(a, g, erro)
  x=g(a)
  while abs(x-a) > erro
    a = x
    x= g(a)
  end
  return x
end

g(x)= e^x -2
r = fixedpoint(-1.8, g, erro)
println("EX 1")
println(r)

g(x)= x-((cos(x)-x^2)/(-sin(x)-(2*x)))
r = fixedpoint(1, g, erro)
println("EX 2")
println(r)


f(x)= e^(-x^2)-2x
function secant(a, b, f, erro)
  g(a, b) = (a*f(b)-b*f(a))/(f(b)-f(a))
  x = g(a, b)
  while abs(x-b) > erro
    a = b
    b = x
    x = g(a, b)
  end
    return x
end


r = secant(1,2, f, erro)
println(r)
r = secant(-2, -1, f, erro)

println(r)
println("EX 4") 
# exercicio 3.6.4
Ir = 10^-12
T = 300
k = 1.380649*(10^-23)
q = 1.60217663*(10^-19)
I(x) = Ir*(e^((x*q)/(k*T))-1)

dI(x) = ((Ir*q)/(k*T))*e^((x*q)/(k*T))
g(x, V, R) = R*I(x) + x - V
dg(x, R) = R*dI(x) + 1
d(x, R, f) = x - (f(x)/dg(x,R))
erro = 10^-3

f(x) = g(x, 30, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, erro)
println(r)
r = secant(0.8, 0.9, f, erro)
println(r)

println()

f(x) = g(x, 3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.7, h, erro)
println(r)
r = secant(0.7, 0.8, f, erro)
println(r)

println()

f(x) = g(x, 3, 10)
h(x) = d(x, 10, f)
r = fixedpoint(0.6, h, erro)
println(r)
r = secant(0.6, 0.7, f, erro)
println(r)

println()

f(x) = g(x, 0.3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.29, h, erro)
println(r)
r = secant(0.29, 0.31, f, erro)
println(r)

println()

f(x) = g(x, -0.3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(-0.29, h, erro)
println(r)
r = secant(-0.29, -0.31, f, erro)
println(r)

println()

f(x) = g(x, -30, 1)
h(x) = d(x, 1, f)
r = fixedpoint(-29.9, h, erro)
println(r)
r = secant(-29.9, -30.1, f, erro)
println(r)

println()

f(x) = g(x, -30, 10)
h(x) = d(x, 10, f)
r = fixedpoint(-29.9, h, erro)
println(r)
r = secant(-29.9, -30.1, f, erro)
println(r)