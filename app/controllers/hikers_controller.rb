class HikersController < ApplicationController

    skip_before_action :authorized?, only: [:login, :handle_login, :new, :create]

    def login
        @error = flash[:error]
    end

    def handle_login
        @hiker = Hiker.find_by(name: params[:name])
        if @hiker && @hiker.authenticate(params[:password])
            redirect_to hiker_path(@hiker)
        else
            flash[:error] = "incorrect username or password"
            redirect_to login_path
        end
    end

    def index
        @hikers = Hiker.all
    end


    def show
        @hiker = Hiker.find(params[:id])
        if @hiker != @current_hiker
            flash[:error] = "you can only view your own profile"
            redirect_to hiker_path(@current_hiker)
        end
    end


    def new
        @hiker = Hiker.new
    end

    def create
        @hiker = Hiker.create(hiker_params)
        if @hiker.valid?
            session[:hiker_id] = @hiker.id
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
