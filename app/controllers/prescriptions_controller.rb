class PrescriptionsController < ApplicationController
    def create
        prescription = Prescription.create(prescription_params)
        render json: prescription, except: [:updated_at, :created_at]
    end

    def index
        prescriptions = Prescription.all
        render :json => prescriptions, :include => ['chemicals']
    end

    def show
        prescription = Prescription.find(params[:id])
        render :json => prescription
    end

    def destroy
        prescription = Prescription.find(params[:id])
        prescription.destroy
        render json: prescription, except: [:updated_at, :created_at]
    end

    private

    def prescription_params
        params.require(:prescription).permit(:id, :user_id, :drug_id)
    end

end

