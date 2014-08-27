#-- From the Project Euler series. This is question number 3, which can be found at https://projecteuler.net/problem=3

def factor(num)
  for i in 2..num do
    if num % i == 0
      factor=i
      break
    end
  end
  reVal=[factor, num/factor]
  return reVal
end

largestFactor=0
num = 600851475143
while num!=1 do
  factors=factor(num)
  if factors[0]>largestFactor
    largestFactor=factors[0]
  end
  num=factors[1]
end
puts largestFactor
