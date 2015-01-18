require "pp"

class SlideShow 
	def initialize
		slidePresentation = IO.read("presentation.txt")
		@newSlides = slidePresentation.split("----").map {|slide| slide.strip} 
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
		
	end	

end

class FormattedSlideshow < SlideShow 
	def print_current
		puts format(@newSlides[@current])  
	end	

	

	def horizontal_center(slide)
		stringLength = slide.length					#Receive string length from array
		prompt_space_hor = 80 - stringLength 				#Subtract from console size
		center_hor = prompt_space_hor / 2 				#Divide remaining prompt space by 2
		center_line = ("^") * center_hor.abs	
		

		return "#{center_line} #{slide} "
	end

	def vertical_center(slide)
		prompt_space_vert = 25 - height
		center_vert = prompt_space_vert / 2
		center_vert_line = ("\n") * center_vert.abs
		return "#{center_vert_line}#{slide}"
	end
	

	def format(slide)
		horizontal_center(slide)
		vertical_center(slide)
		
		
		return slide 
	end

	# def format_vertical(slide)
	# 	return vertical_center(slide)
	# end



end


term = FormattedSlideshow.new
term.start
term.print_current

input = nil

 while input != "Exit"
	input = gets.chomp
	if input == "nxt"
		term.nextSlide
	elsif input == "prev"
		term.prevSlide
	else input == "auto"
		term.auto
	end
end






