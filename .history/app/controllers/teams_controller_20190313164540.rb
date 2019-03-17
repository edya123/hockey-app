class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def new
            @team = Team.new
    end

    def create
        @team = Team.new(params[:team])

        if @team.save
            redirect_to :index, notice: "Komanda veiksmīgi izveidota"
        else
            render :new
        end
    end
    
    def edit
        @team = Team.find(params[:id])
    end

    def update
        @team = Team.find(params[:id])
        params[:team]
    end

    def destroy
        @team = Team.find(params[:id])
        @team.destroy
    end

    private

    def team_params
        params.require(:team)
    end
end