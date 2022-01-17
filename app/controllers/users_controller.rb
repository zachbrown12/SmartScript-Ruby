class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        render json: user, except: [:updated_at, :created_at]
    end

    def index
        users = User.all
        render :json => users, :include => ['prescriptions', 'user_variants', 'variants' , 'effects', 'drugs', 'chemicals', 'ingredients']
    end

    def show
        user = User.find(params[:id])
        render :json => user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user, except: [:updated_at, :created_at]
    end



    private

    def user_params
        params.require(:user).permit(:id, :username, :name, :file)
    end

end
