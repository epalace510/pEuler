#-- From the Project Euler series. This is question number 6, which can be found at https://projecteuler.net/problem=6
#
#Although I know that this somewhat defeats the purpose of Project Euler (strenghtening math skills, more than programming),
#I thought that this little bit of ruby syntax was pretty neat and wanted to see if I could make it work.
puts (((1..100).inject(:+)**2)-((1..100).inject{|sum, n| sum + n**2})).abs
