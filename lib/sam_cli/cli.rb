class SamCli::CLI
    

    def greeting
        puts "
        🅦 🅔 🅛 🅒 🅞 🅜 🅔  🅣 🅞  🅣 🅗 🅔   🅣 🅞 🅟   ➊ ⓿   🅥 🅐 🅒 🅐 🅣 🅘 🅞 🅝 🅢   🅐 🅟 🅟  ❗
        --------------------------------------------------------------------- "

        SamsCliProject::Scraper.get_scraper

    end

    def get_season
        @seasons = SamsCliProject::Vacation.all.seasons_list
    end

    def show_seasons
        puts "
        What season are you interested in traveling? Select a number for a season. 
        "
        @seasons.each.with_index do |season, index|
           puts "#{index + 1}. #{season.name}"
        end
    end

    def valid_input?(input, data)
        input.to_i <= @seasons.length && input.to_i > 0
    end

    def get_chosen_season
        chosen_season = gets.strip.to_i
        show_destination_for(chosen_season) if valid_input?(chosen_season.to_i, @seasons)
    end


    def show_destination_for(chosen_season)
        #list destinations for season/scrape the data
        @destinations = SamsCliProject::Vacation.get_destination
        season = @seasons[chosen_season - 1].name

        puts ""
        puts "Here are the Best Vacation destinations for #{season}. "
        puts "Select a number to view the location."
        puts ""

        @destinations.each.with_index do |d, index|
            puts "#{index + 1}. #{d.name}"
        end
    end


    def get_chosen_destin
        chosen_destin = gets.strip.to_i
        show_info_for(chosen_destin) if valid_destin_input?(chosen_destin.to_i, @destinations)
    end
    def valid_destin_input?(input, data)
        input.to_i <= @destinations.length && input.to_i > 0
    end


    def show_info_for(chosen_destin)
        @details = Top10Vacations::Vacations.info
    
        @details.each.with_index(1) do |d, i|
            statement = "#{i}. #{d.info.split.join(" ")}"
            puts statement
            binding.pry
        end
    end
end