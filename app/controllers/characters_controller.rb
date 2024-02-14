class CharactersController < ApplicationController
    def index
        @characters = Character.all
    end

    def show
        @character = Character.find(params[:id])
        @ranking = Ranking.new
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(characters_params)
        if @character.save
            # Redirect to characters list -> TBD in routbe.rb (redirect_to characters_list)
        else
            render :new
        end
    end

    def edit
        @character = Character.find(params[:id])
    end

    def update
        @character = Character.find(params[:id])
        @character.update(characters_params)

        # Redirect to character show (redirect_to character_details_path(@character)) OR redirect to character list (and fu) (redirect_to characters_list)
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy

        # Redirect to character list (redirect_to characters_list)
    end

    private

    def characters_params
        params.require(:character).permit(:name, :level)
    end
end
