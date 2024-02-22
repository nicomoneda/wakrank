class RankingsController < ApplicationController
    def show
    end

    # def new
    #     @ranking = Ranking.new#(character_id: params[:character_id], dungeon_id: params[:dungeon_id])
    #     @dungeon = Dungeon.find(params[:dungeon_id])
    #     puts "coucou"
    # end

    def create
        puts "on est dans le CREATE"
        @ranking = Ranking.new(ranking_params)
        @dungeon = Dungeon.find(params[:dungeon_id]) # Pas péren vu qu'id récup dans l'url
        @character = Character.find(params[:ranking][:character_id]) # Me gène ce truc là, choppe l'id à partir de l'url
        @ranking.dungeon = @dungeon
        @ranking.character = @character
        puts @ranking.dungeon.name
        puts @ranking.character.name

        if @ranking.save
            redirect_to dungeon_path(@dungeon)
        else
            redirect_to dungeon_path(@dungeon)
        end
        puts "FINI"
    end

    def edit
        @ranking = Ranking.find(params[:id])
    end
    
    def update
        @ranking = Ranking.find(params[:id])
        @ranking.update(ranking_params)

        redirect_to dungeon_path(@dungeon)
    end

    def destroy
        @ranking = Ranking.find(params[:id])
        @ranking.destroy

        # No need redirect cause this method will probably be used only once a month. Could even be a job maybe
        # redirect_to dungeon_path(@dungeon)
    end

    private

    def ranking_params
        params.require(:ranking).permit(:stasis, :rank)
    end
end
