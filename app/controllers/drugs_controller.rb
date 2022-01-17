class DrugsController < ApplicationController
    def create
        drug = Drug.create(drug_params)
        render json: drug, except: [:updated_at, :created_at]
    end

    def index
        drugs = Drug.all
        render :json => drugs, :include => ['chemicals', 'effects']
    end

    def show
        drug = Drug.find(params[:id])
        render :json => drug
    end

    def destroy
        drug = Drug.find(params[:id])
        drug.destroy
        render json: drug, except: [:updated_at, :created_at]
    end

    private

    def drug_params
        params.require(:drug).permit(:id, :name, :use, :category, :image, effect)
    end

end



