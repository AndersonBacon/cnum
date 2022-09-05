using LinearAlgebra

A = [1 1 1;
     4 4 2;
     2 1 -1]

B = [1; 2; 0]

x = A \ B
println(x)

erro = 10^-3

function jacobi(A, B, K)
  n = size(b, 1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = 0
      for j = 1:n
        if i != j
        count += A[i, j]*X[j]
      end
    end
    k[i] = (B[i]-count)/A[i, i]
  end

  if norm(X.K) < erro
    break
  end
  x = copy(K)
end
return x
end