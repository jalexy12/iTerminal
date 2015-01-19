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

	

end

class FormattedSlideshow < SlideShow 
	def print_current
		puts format(@newSlides[@current])  
	end	

	

	def horizontal_center(slide)
		stringLength = slide.length			#Receive string length from array
		prompt_space_hor = 80 - stringLength 				#Subtract from console size
		center_hor = prompt_space_hor / 2 
		puts center_hor				#Divide remaining prompt space by 2
		center_line = (" ") * center_hor	
		return "#{center_line}#{slide}"
		
	end

	def split_slide(slide)

		slide_lines = slide.split("\n")
		formatted_lines = slide_lines.map {|x| self.horizontal_center(x)}
		formatted_lines.join("\n")
		

		# slide_presentation.each do |i|
		# 	longest_line = i.length
		# end
	end
	# def center_presentation
	

	# end




	def vertical_center(slide)
		newSlide = slide.split("\n")
		height = newSlide.length
		prompt_space_vert = 25 - height
		center_vert = prompt_space_vert / 2
		center_vert_line = ("\n") * center_vert
		#horizontal_center(slide)
		return center_vert_line + slide + center_vert_line 
	end
	

	def format(slide)
		new_slide = self.split_slide(slide)

		formattedSlide = self.vertical_center(new_slide)
		
		return formattedSlide
		
	end




end


term = FormattedSlideshow.new
term.start



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






