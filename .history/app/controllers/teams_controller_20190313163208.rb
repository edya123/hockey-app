class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def new
            @team = Team.new
    end

    def create
        @team = Team.new
        params[:team][:title]
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
        
    end
end