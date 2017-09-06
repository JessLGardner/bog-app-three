class CreaturesController < ApplicationController

    def index
        @creatures = Creature.all
    end

    def show
        @creature = Creature.find(params[:id])
    end

    private
    def creature_params
        params.require(:creature).permit(:name, :description)
    end
end
