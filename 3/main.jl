f1(x) = sqrt(x) - cos(x)
f2(x) = 5*sin(x^2) - MathConstants.e^(x/10)
f31(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-30 
f32(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-3
f33(x) =10*((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-3
f34(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-0.3
f35(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+0.3
f36(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+30
f37(x) = 10*((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+30

erro = 10^-5

function bisection(a,b, f)
  x = (a+b/2)
  while abs(f(x)) > erro
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end

r = bisection(0, 1, f1)
println("exercicio 1")
println(r)

r = bisection(0.4, 0.5, f2)
println("\nexercicio 2")
println(r)

r = bisection(1, 2, f2)
println(r)

r = bisection(2.2, 2.8, f2)
println(r)

r = bisection(0.8, 0.9, f31)
println("\nexercicio 3")
println(r)

r = bisection(0.7, 0.8, f32)
println(r)

r = bisection(0.7, 0.8, f33)
println(r)

r = bisection(0.25, 0.35, f34)
println(r)

r = bisection(-0.25, -0.35, f35)
println(r)

r = bisection(-0.25, -0.35, f35)
println(r)

r = bisection(-30.5, -29.5, f36)
println(r)

r = bisection(-30.5, -29.5, f37)
println(r)