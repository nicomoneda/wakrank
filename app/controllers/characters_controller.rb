class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]
    
    def index
        @characters = Character.all
    end

    def show        
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
    end

    def update
        @character.update(characters_params)
        # Redirect to character show (redirect_to character_details_path(@character)) OR redirect to character list (and fu) (redirect_to characters_list)
    end

    def destroy
        @character.destroy

        # Redirect to character list (redirect_to characters_list)
    end

    private

    def set_character
        @character = Character.find(params[:id])
    end

    def characters_params
        params.require(:character).permit(:name, :level)
    end
end
