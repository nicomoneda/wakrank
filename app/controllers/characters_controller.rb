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
        redirect_to characters_path
    end

    def destroy
        @character.destroy

        redirect_to characters_path
    end

    private

    def set_character
        @character = Character.find(params[:id])
    end

    def characters_params
        params.require(:character).permit(:name, :level)
    end
end
