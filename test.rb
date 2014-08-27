def palTest(num)
  sNum=num.to_s
  oStr=sNum.slice!((sNum.length/2)..sNum.length-1)
  #If the string did not slice evenly, take the shared letter and replace it in
  #the original string, at the end. (Ex: "Hello" would be split into "He" and "llo"
  #. This would take the last l and put it at the end, to get "Hel" and "llo".
  if num.to_s.length%2!=0
    puts "IN the if"
    sNum.insert(-1, oStr[0])
  end
  puts sNum
  puts oStr
  if(sNum.reverse==oStr)
    return true
  else
    return false
  end
end

puts palTest(11811)
