class SamCli::Vacation
    attr_accessor :season_list, :destinations, :info
    @@all = []
    @@seasons = ["Winter", "Spring", "Summer", "Fall"]

    def initialize(season_list, destination, info)
        @season_list
        @destination = destinations
        @@all << self
    end

    def self.all
        @@all
    end

    def season_list
        @season
    end

    def self.get_destination
        SamCli::Scraper.get_destination
    end

    def self.get_info
        SamCli::Scraper.get_info
    end

    

    

end