class HikersController < ApplicationController

    skip_before_action :authorized?, only: [:login, :handle_login, :new, :create]

    def login
        @error = flash[:error]
    end

    def handle_login
        @hiker = Hiker.find_by(username: params[:username])
        if @hiker && @hiker.authenticate(params[:password])
            session[:hiker_id] = @hiker.id
            redirect_to hiker_path(@hiker)
        else
            flash[:error] = "incorrect username or password"
            redirect_to login_path
        end
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

    def edit
        @hiker = Hiker.find(params[:id])
        @hiker = @current_hiker
        # NEED CLARIFICATION ON THIS
        # @hiker.avatar.attach(params[:avatar])
    end

    def update
        @current_hiker = Hiker.find(params[:id])
        @current_hiker.update_attributes(hiker_params)
        redirect_to @current_hiker
    end

    def destroy
        @current_hiker = Hiker.find(params[:id])
        @current_hiker.destroy
        redirect_to homepage_path
    end


    private

    def hiker_params
        params.require(:hiker).permit(:name, :username, :password, :experience, :avatar)
    end
end
