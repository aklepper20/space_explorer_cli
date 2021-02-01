class Scraper

    def get_page#(input)
        html = "https://www.sciencekids.co.nz/sciencefacts/planets/#{self.name}.html"
        planet = Nokogiri::HTML(open(html))
        info = planet.css(".style1 .style33")[0].text
        fun_fact = planet.css(".style1 .style33")[1].text
        binding.pry
     end
   
          
end #end of class

Scraper.new.get_page