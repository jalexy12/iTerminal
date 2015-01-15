

# class Iterminal
# 	def initialize
# 		@input = File.new("presentation.txt")
# 	end


# 	def printPresentation
# 		@input.each("presentation.txt") do |line|
#   			puts line
# 		end
# 	end

# end

# elements.each_with_index {|element, index|
#    next_element = elements[index+1]
#    do_something if next_element.nil?
#    ...

# a = []
# File.open('tmp.txt') do |f|
#   f.lines.each do |line|
#     a << line.split.map(&:to_i)
#   end
# end


class SlideShow 
	def initialize
		slidePresentation = IO.read("presentation.txt") do |i|
			i.lines.each do |line|
				slidePresentation << line.split{"\n"}
			end
		end
	end


		

	def auto
		slidePresentation.each do |line|
  			puts line
		end
	end
	

	# def nextSlide
	# 	@input.each_with_index {|0 | index|}
	# 		next_element = @input[index+1]
	# 		puts next_element
	# end

	def prevSlide
		@previous = previousSlide


	end

	def formatText

	end
end

# class Format



term = SlideShow.new
 # term.auto

