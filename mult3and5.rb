#-- From the Project Euler series. This is question number 1, which can be found at https://projecteuler.net/problem=1

sum=0
for i in 0..999 do
  if i%3==0 || i%5==0
    sum+=i
  end
end
puts sum
