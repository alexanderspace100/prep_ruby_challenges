# Write a method overlap which takes two rectangles defined by the coordinates of their corners,
# e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap.
# You can assume all coordinates are positive integers.

def overlap(rectangle1, rectangle2)
  ( ( (rectangle1[0][0] < rectangle2[0][0]) && (rectangle1[0][1] < rectangle2[0][1]) ) && 
	( (rectangle1[1][0] > rectangle2[0][0]) && (rectangle1[1][1] > rectangle2[0][1]) ) ) || 
  ( ( (rectangle1[0][0] < rectangle2[1][0]) && (rectangle1[0][1] < rectangle2[1][1]) ) && 
  	( (rectangle1[1][0] > rectangle2[1][0]) && (rectangle1[1][1] > rectangle2[1][1]) ) )
end

puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )