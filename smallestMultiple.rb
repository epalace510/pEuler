#-- From the Project Euler series. This is question number 5, which can be found at https://projecteuler.net/problem=5

#The number must be divisible by all numbers between 1 and 20. Since 
#everything works out to prime factors, we only need to find what's
#divisible by primes.
#
#What I said above *should* be the case, but it doesn't seem to work
#when I do that, so I've put every number in and it works now.
#Come back to this.

def divTest(num)
  if num%1==0 && num%2==0 && num%3==0 && num%4==0 && num%5==0 && num%6==0 && num%7==0 && num%8==0 && num%9==0 && num%10==0 && num%11==0 && num%12==0 && num%13==0 && num%14==0 && num%15==0 && num%16==0 && num%17==0 && num%18==0 && num%19==0 && num%20==0
    return true
  else
    return false
  end
end

fact=false
num=2527 #2520 was given as smallest multiple of 1..10. If it's smallest for a subset, it's the lower bound of our set.
#BUT it needs to be divisible by 19 in order to start incrementing by 19, so 2527 is the closest number to 2520 that fits.
# The upper bound of the search is 2432902008176640000, the factorial of 20.

while num < 2432902008176640000 do
  if(divTest(num))
    puts "Answer:"
    puts num
    break
  else
    #Only need to increment by the largest prime, no need to check others.
    num+=19
  end
end
