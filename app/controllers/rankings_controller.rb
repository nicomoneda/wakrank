class RankingsController < ApplicationController
    def show
    end

    def new
        @ranking = Ranking.new #(character_id: params[:character_id], dungeon_id: params[:dungeon_id])
        @dungeon = Dungeon.find(params[:dungeon_id])
        @characters = Character.where("level >= #{@dungeon.modulation - 14}")
        @noRankCharacters = []
        @characters.each do |character|
            Ranking.where(character: character, dungeon: @dungeon).exists? ? nil : @noRankCharacters << character
        end
    end

    def create
        @ranking = Ranking.new(ranking_params)
        @dungeon = Dungeon.find(params[:dungeon_id]) # Pas péren vu qu'id récup dans l'url
        @character = Character.find(params[:ranking][:character_id]) # Me gène ce truc là, choppe l'id à partir de l'url
        @ranking.user_id = current_user.id
        @ranking.dungeon = @dungeon
        @ranking.character = @character

        if (@dungeon.kind.name == "Brèche Dimensionnelle" || 
            @dungeon.kind.name == "Brèche Dimensionnelle Ultime" || 
            @dungeon.kind.name == "Boss Ultime à Score")
            case @ranking.stasis
            when 1
                @ranking.stasis = 10
            when 2..60
                @ranking.stasis = 5
            else
                @ranking.stasis = 1
            end
        end
        puts "TOTAL COFFRES DU PERSO"
        puts @character.name
        puts @character.total_chest
        @character.total_chest = @character.total_chest + @ranking.stasis
        puts "NOUVEAU TOTAL COFFRES"
        puts @character.total_chest

        if @ranking.save
            @character.save
            redirect_to dungeon_path(@dungeon)
        else
            redirect_to dungeon_path(@dungeon)
        end
    end

    def edit
        @ranking = Ranking.find(params[:id])
        puts @ranking
        @dungeon = @ranking.dungeon
        @character = @ranking.character
    end
    
    def update
        update_stasis = 0
        update_chest = 0
        
        @ranking = Ranking.find(params[:id])
        character = Character.where(character: @ranking.character)
        # Get the total chests and remove the old stasis
        update_chest = character.total_chest - @ranking.stasis

        @ranking.update(ranking_params)

        update_chest += @ranking.stasis
        character.update(:total_chest => update_chest)

        if (@ranking.dungeon.kind.name == "Brèche Dimensionnelle" || 
            @ranking.dungeon.kind.name == "Brèche Dimensionnelle Ultime" || 
            @ranking.dungeon.kind.name == "Boss Ultime à Score")
            case @ranking.stasis
            when 1
                update_stasis = 10
            when 2..60
                update_stasis = 5
            else
                update_stasis = 1
            end
            @ranking.update(:stasis => update_stasis)
        end
        
        redirect_to dungeon_path(@ranking.dungeon)
    end

    def destroy
        @ranking = Ranking.find(params[:id])
        @ranking.destroy

        # No need redirect cause this method will probably be used only once a month. Could even be a job maybe
        # redirect_to dungeon_path(@dungeon)
    end

    # TEMPORAIRE #
    def destroy_all
        Ranking.where(user_id: current_user.id).destroy_all
        characters = Character.where(user_id: current_user.id)
        characters.each do |character|
            character.update(:total_chest => 0)
        end
        
        redirect_to dungeons_path
    end
    # FIN TEMPORAIRE #

    private

    def ranking_params
        params.require(:ranking).permit(:stasis, :rank, :character_id)
    end
end
