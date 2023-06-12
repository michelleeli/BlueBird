class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    #bypasses authenticity token for requests 
end
