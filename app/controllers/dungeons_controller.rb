class DungeonsController < ApplicationController
    def index
        @dungeons = Dungeon.all
        @coffres = []
        @dungeons.each do |dungeon|
            sum = 0
            all_ranking = Ranking.where(dungeon: dungeon)
            puts all_ranking
            all_ranking.each do |rank|
                puts rank
                sum += rank.stasis
            end
            @coffres << sum
        end
        puts "Tableau coffres = #{@coffres}"
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
