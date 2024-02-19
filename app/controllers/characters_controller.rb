class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]
    
    def index
        @characters = Character.all
        @recompenses = []
        # afficher coffres d'un perso
        @characters.each do |character|
            sum = 0
            all_rankings = Ranking.where(character: character)
            all_rankings.each do |ranking|
                sum += ranking.stasis
            end
            @recompenses << sum
        end
    end

    def show        
        
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(characters_params)
        if @character.save
            redirect_to characters_path
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
