require "pp"

class SlideShow 
	def initialize
		slidePresentation = IO.read("presentation.txt")
		@newSlides = slidePresentation.split("----")
		
	end

		

	 def auto()
	 	@newSlides.each do |line|
 			puts line
	 	end
	 end
	
	 def start()
	 	@current = 0
	 	puts @newSlides[0]
	 end
	

	def nextSlide()
		if @current == (@newSlides.length - 1)
			start
		else
			@current += 1
			puts @newSlides[@current]
		end
	end
	
	def prevSlide
		if @current == 0
			puts "No more previous slides"
	
		else
			@current -= 1
			puts @newSlides[@current]
		end

	end

	def formatText

	end
end

# class Format



term = SlideShow.new
term.start
term.prevSlide

