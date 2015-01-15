require "pp"

class SlideShow 
	def initialize
		slidePresentation = IO.read("presentation.txt")
		@newSlides = slidePresentation.split("----")
		@current = 0
	end

		

	 def auto()
	 	@newSlides.each do |line|
 			puts line
	 	end
	 end
	 def start()
	 	puts @newSlides[0]
	 end
	

	def nextSlide()
		@current += 1
		puts @newSlides[@current]
	end
	def prevSlide
		@current -= 1
		puts @newSlides[@current]


	end

	def formatText

	end
end

# class Format



term = SlideShow.new
term.start
term.nextSlide
term.nextSlide
term.nextSlide
term.prevSlide

