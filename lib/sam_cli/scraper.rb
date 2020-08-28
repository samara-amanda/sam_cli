#This file is used for scraping our outside data
require 'open-uri'
class SamCli::Scraper

    def self.get_destination

        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))
    
        destinations = page.css('h2')
        vac_info = page.css('div.card-content, p ltr')


        destinations.shift

        destinations.each do |element|
            destination = element.text.split(": ").drop(1).join
            destin = SamCLI::Vacation.new(destination)
        end
    end

    def self.get_info
        url="https://www.rd.com/list/best-places-to-travel-every-month-of-the-year/"

        page = Nokogiri::HTML(open(url))
    
        destinations = page.css('h2')
        vac_info = page.css('div.card-content, p ltr')


        destinations.shift

        vac_info.each do |element|
            result = d.text.split(": ").drop(1).join
            info = SamCLI::Vacation.new(info)
        end
    end

end