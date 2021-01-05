class HikersController < ApplicationController

    def login
        
    end

    def handle_login
        @hiker = Hikers.find_by(name: params[:name])
    end

    def index
        @hikers = Hiker.all
    end

    def show
        @hiker = Hiker.find(params[:id])
    end

    def new
        @hiker = Hiker.new
    end

    def create
        @hiker = Hiker.create(hiker_params)
        if @hiker.valid?
            redirect_to hiker_path(@hiker)
        else
            flash[:errors] = @hiker.errors.full_messages
            redirect_to new_hiker_path
        end
    end


    private

    def hiker_params
        params.require(:hiker).permit(:name, :username, :password, :experience)
    end
end
