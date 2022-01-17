class UserRowsController < ApplicationController

    def create
        user_row = UserRow.create(user_row_params)
        render json: user_row, except: [:updated_at, :created_at]
    end

    def index
        user_rows = UserRow.all
        render :json => user_rows, :include => ['chemicals']
    end

    def show
        user_row = UserRow.find(params[:id])
        render :json => user_row
    end

    def destroy
        user_row = UserRow.find(params[:id])
        user_row.destroy
        render json: user_row, except: [:updated_at, :created_at]
    end

    private

    def user_row_params
        params.require(:user_row).permit(:id, :RSID, :chromosome, :genotype)
    end

end
