class DungeonsController < ApplicationController
    def index
        @dungeons = Dungeon.all
        @coffres = []
        @dungeons.each do |dungeon|
            sum = 0
            all_ranking = Ranking.where(dungeon: dungeon)
            all_ranking.each do |rank|
                sum += rank.stasis
            end
            @coffres << sum
        end
    end

    def show
        @dungeon = Dungeon.find(params[:id])
        @ranking_dungeon = @dungeon.rankings
        @total_coffres = 0
        @ranking_dungeon.each do |rank|
            @total_coffres += rank.stasis
        end            
    end
end
