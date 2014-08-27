#-- From the Project Euler series. This is question number 2, which can be found at https://projecteuler.net/problem=2

def fib(num1, num2)
  fibs=[num2, num1+num2]
  return fibs
end


num1=1
num2=2
sum=0

while num2<4000000 do
  if num2%2==0
    sum+=num2
  end
  nextNums = fib(num1, num2)
  num1=nextNums[0]
  num2=nextNums[1]
end
puts sum
