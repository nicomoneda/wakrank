class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]
    
    def index
        @characters = Character.where(user_id: current_user.id)
    end

    def show        
        
    end

    def new
        @characterClasses = CharacterClass.all.order(name: :asc)
        @character = Character.new
    end

    def create
        @character = Character.new(characters_params)
        @characterClass = CharacterClass.find(params[:character][:character_class_id])
        @character.character_class = @characterClass
        @character.user_id = current_user.id
        respond_to do |format|
            if @character.save
                format.turbo_stream { render turbo_stream: turbo_stream.prepend('characters', partial: 'characters/character', locals: {character: @character}) }
                # format.html { redirect_to post_url(@character), notice: "#{@character.name} was successfully created." }
                # redirect_to characters_path
            else
                render :new
            end
        end

    end

    def edit
        
    end

    def update
        respond_to do |format|
            if @character.update(characters_params)
                format.turbo_stream { render turbo_stream: turbo_stream.replace(@character, partial: "characters/character", locals: {character: @character}) }
                format.html { redirect_to post_url(@character), notice: "#{@character.name} was successfully updated." }
            # redirect_to characters_path
            end
        end

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
        params.require(:character).permit(:name, :level, :character_class_id)
    end
end
