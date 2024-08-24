class DungeonsController < ApplicationController
    def index
        @dungeons = Dungeon.all

        @coffres = []
        @characters = []
        @rankedCharacters = []
        rankedDungeons = []

        if params[:name].present?
            @dungeons = @dungeons.where("name LIKE ?", "%#{params[:name]}%")
            # Solution avec des mots clefs "keyword" (à ajouter au model)
            # @dungeons = @dungeons.where("name LIKE ? OR keywords LIKE ?", "%#{params[:name]}%", "%#{params[:name]}%")
        end
        
        if params[:min_level].present?
            @dungeons = @dungeons.where("modulation >= ?", params[:min_level])
        end
        
        if params[:max_level].present?
            @dungeons = @dungeons.where("modulation <= ?", params[:max_level])
        end

        if params[:no_ranked] == '1'
            @dungeons.each do |dungeon|
                if Ranking.where(user_id: current_user.id).where(dungeon_id: dungeon.id).exists?
                    rankedDungeons << dungeon
                end
            end
            @dungeons -= rankedDungeons
            puts "VERIFICATION DES DONJONS"
            @dungeons.each do |dungeon|
                puts dungeon.name
            end
            puts "FIN VERIFICATION"
        end

        @dungeons.each do |dungeon|

            all_ranking = Ranking.where(dungeon: dungeon)
            totalCharacters = Character.where("level >= #{dungeon.modulation - 14}").count
            
            @coffres << all_ranking.sum(:stasis)
            @rankedCharacters << all_ranking.count 
            @characters << totalCharacters
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
