class EffectsController < ApplicationController
    def create
        effect = Effect.create(effect_params)
        render json: effect, except: [:updated_at, :created_at]
    end

    def index
        effects = Effect.all
        render :json => effects, :include => ['chemicals']
    end

    def show
        effect = Effect.find(params[:id])
        render :json => effect
    end

    def destroy
        effect = Effect.find(params[:id])
        effect.destroy
        render json: effect, except: [:updated_at, :created_at]
    end

    private

    def effect_params
        params.require(:effect).permit(:id, :variant_id, :chemical_id, :medical_effect, :notes)
    end

end


