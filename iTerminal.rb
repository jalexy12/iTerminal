require "pp"

class SlideShow 
	def initialize
		slidePresentation = IO.read("presentation.txt")
		@newSlides = slidePresentation.split("----")
		puts "nxt for nxt : prev for previous : auto for auto : exit to exit"
	end

		

	 def auto()
	 	@newSlides.each do |line|
 			puts line
	 	end
	 end
	
	 def start()

	 	@current = 0
	 	print_current

	 end
	

	def nextSlide()
		if @current == (@newSlides.length - 1)
			start
		else
			@current += 1
			print_current
		end
	end
	
	def prevSlide
		if @current == 0
			puts "No more previous slides"
	
		else
			@current -= 1
			print_current
		end

	end

	def print_current
		puts @newSlides[@current]
	end	

end

class FormattedSlideshow < SlideShow 
	def print_current
		puts format(@newSlides[@current])
	end	

	def format(slide)
		hor_formatted_slide = @newSlides.horizontal_center
		# @newSlide[current]
		puts hor_formatted_slide
		
	end

	def horizontal_center
		stringLength = @newSlides[@current].length
		prompt_space = 80 - stringLength 
		center_hor = prompt_space / 2
		center_line = center_hor * "  "
		return "#{center_line} + #{@newSlides[@current]}"
	end

	def vertical_center
		


	end
end












term = FormattedSlideshow.new
term.start
term.print_current

# input = nil

#  while input != "Exit"
# 	input = gets.chomp
# 	if input == "nxt"
# 		term.nextSlide
# 	elsif input == "prev"
# 		term.prevSlide
# 	else input == "auto"
# 		term.auto
# 	end
# end






