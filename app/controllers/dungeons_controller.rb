class DungeonsController < ApplicationController
    def index
        @dungeons = Dungeon.all

        @coffres = []
        @characters = []
        @rankedCharacters = []
        @dungeons.each do |dungeon|

            all_ranking = Ranking.where(dungeon: dungeon)
            totalCharacters = Character.where("level >= #{dungeon.modulation - 14}").count
            
            @coffres << all_ranking.sum(:stasis)
            @rankedCharacters << all_ranking.count 
            @characters << totalCharacters
            # @characters.each do |character|
            #     Ranking.where(character: character, dungeon: dungeon).exists? ? nil : sumCharacters += 1 # EH OUI. On peut pas ++ dans Ruby L.U.L
            # end
            # @noRankCharacters << sumCharacters

            # sumCoffres = 0
        end
    end

    def show
        @dungeon = Dungeon.find(params[:id])
        @ranking = Ranking.new
        
        @characters = Character.where("level >= #{@dungeon.modulation - 14}")
        @noRankCharacters = []
        @characters.each do |character|
            Ranking.where(character: character, dungeon: @dungeon).exists? ? nil : @noRankCharacters << character
        end

        @ranking_dungeon = @dungeon.rankings
        @total_coffres = 0
        @ranking_dungeon.each do |rank|
            @total_coffres += rank.stasis
        end            
    end
end
