class RankingsController < ApplicationController
    def show
    end

    def new
    end

    def create
        @ranking = Ranking.new(ranking_params)
        @dungeon = Dungeon.find(params[:dungeon_id])
        @ranking.dungeon = @dungeon
        @ranking.character = Character.find(params[:character_id])

        if @ranking.save
            # Redirect to character_list_dungeon
        else
            render 'characters/show'
        end
    end

    def edit
        @ranking = Ranking.find(params[:id])
    end
    
    def update
        @ranking = Ranking.find(params[:id])
        @ranking.update(ranking_params)

        # Redirect to character_list_dungeon
    end

    def destroy
        @ranking = Ranking.find(params[:id])
        @ranking.destroy

        # No need redirect cause this method will probably be used only once a month. Could even be a job maybe
    end

    private

    def ranking_params
        params.require(:ranking).permit(:stasis, :rank)
end
