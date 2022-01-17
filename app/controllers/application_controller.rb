class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    protect_from_forgery unless: -> { request.format.json? }
    protect_from_forgery except: [:destroy, :create, :index, :show]
end
