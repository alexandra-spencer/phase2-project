class HikersController < ApplicationController

    def index
        @hikers = Hiker.all
    end

    def show
        @hiker = Hiker.find(params[:id])
    end
end
