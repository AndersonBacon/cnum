using .MathConstants: e

erro = 10^-8

function fixedpoint(a,g)
  x=g(a)
  while abs(x-a) > erro
    a = x
    x= g(a)
  end
  return x
end

g(x)= e^x -2
r = fixedpoint(-1.8, g)
println(r)

g(x)= x-((cos(x)-x^2)/(-sin(x)-(2*x)))
r = fixedpoint(1, g)
println(r)

function secant(a, b)
  g(a, b) = (a*f(b)-b*f(a))/(f(b)-f(a))
  x = g(a, b)
  while abs(x-b) > erro
    a = b
    b = x
    x = g(a, b)
  end
    return x
end

f(x)= e^(-x^2)-2x
r = secant(1,2)
println(r)
r = secant(-2, -1)
println(r)
  

