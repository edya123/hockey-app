class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def new
            @team = Team.new
    end

    def create
        params[:team][:title]
    end
    
    def edit
        @team = Team.find(params[:id])
end