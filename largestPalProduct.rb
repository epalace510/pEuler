#-- From the Project Euler series. This is question number 4, which can be found at https://projecteuler.net/problem=4
def palTest(num)
  sNum=num.to_s
  oStr=sNum.slice!((sNum.length/2)..sNum.length-1)
  #If the string did not slice evenly, take the shared letter and replace it in
  #the original string, at the end. (Ex: "Hello" would be split into "He" and "llo"
  #. This would take the last l and put it at the end, to get "Hel" and "llo".
  if num.to_s.length%2!=0
    sNum.insert(-1, oStr[0])
  end
  if(sNum.reverse==oStr)
    return true
  else
    return false
  end
end
#First get the range of numbers I'll test, then figure out how to test for palindrome.
def testRange(num, highestPal)
  #Since it's only the LARGEST palindrome, any numbers which would give a product less
  #than the current highest palindrome doesn't need to be tested
  minRange=highestPal/num
  if minRange>999
    return 0
  end
  #Question specifically asks about multiplying 3 digit numbers. If it's less than 3 digist,
  #then fix that.
  if minRange<100
    minRange=100
  end
  #Goes from highest to lowest, so the first palindrome found will always be the highest.
  (num-1).downto(minRange){ |i|
    if palTest(i*num)
      return i*num
    end
  }
  #If nothing is found, return a 0 by default.
  return 0
end

largestPal=0
currentPal=0
999.downto(100){ |i|
  currentPal=testRange(i, largestPal)
  if currentPal>largestPal
    largestPal=currentPal
  end
}
puts largestPal
