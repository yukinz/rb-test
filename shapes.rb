#
#Ruby test Project 1: Shapes
#Programmed by Yuki
#experiment with drawing ASCII art shapes using code.
#

=begin
# using [object].upto(max) do|variable|
print "6.upto(8)\n"
6. upto(8) do |num|
      print "num = #{num}\n"
end
=end

# Draw a rectangle
def rectangle(height, width, outside_letter, inside_letter)
    # The rectangle code
    1.upto(height) do |row|
        if row == 1
            puts outside_letter * width
        elsif row == height
            puts outside_letter * width
        else
            middle = inside_letter * (width - 2)
            puts "#{outside_letter}#{middle}#{outside_letter}"
        end
    end
end

# Draw a triangle
def triangle(height, outside_letter, inside_letter)
    1.upto(height) do |row|
    print ' ' * (height - row)
        if row == 1
            puts "#{outside_letter * 2}"
        elsif row == height 
            puts outside_letter * height * 2
        else middle = inside_letter * (row - 2)
            print "#{outside_letter}#{middle}#{inside_letter}"
            puts "#{inside_letter}#{middle}#{outside_letter}"
        end
    end
end

puts "Welcome to Shapes"

#Obtain shape size and letters
print"How big do you want your shapes? "
shape_size = gets
shape_size = shape_size.chomp
print "Outside letter: "
outside_letter = gets
outside_letter = outside_letter.chomp
print "Inside Letter: "
inside_letter = gets
inside_letter = inside_letter.chomp

#Display what number and letter got
puts "About to draw a shape #{shape_size} big"
puts "using #{outside_letter} for the edge"
puts "and #{inside_letter} for the inside"

height = shape_size.to_i
width = shape_size.to_i

triangle(height, outside_letter, inside_letter)
rectangle(height, width * 2, outside_letter, inside_letter)
