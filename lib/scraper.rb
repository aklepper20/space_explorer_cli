class Scraper

    def get_page(input)
        html = "https://www.sciencekids.co.nz/sciencefacts/planets/#{input}.html"
        planet = Nokogiri::HTML(open(html))
        info = planet.css(".style1 .style33")[0].text
        fun_fact = planet.css(".style1 .style33")[1].text
        Space.new(info, fun_fact)
     end
           
end #end of class

