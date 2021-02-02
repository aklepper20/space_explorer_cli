require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper 

    def self.scrape(input)
      doc =  Nokogiri::HTML(open("https://www.sciencekids.co.nz/sciencefacts/planets/#{input}.html")).css('.style1')
    
   
        self.doc.each do |el| 
            info = el.css(".style1 .style33")[0].text.strip
            fun_fact = el.css(".style1 .style33")[1].text.strip
            Space.new(info, fun_fact)
        end
    end
end 


