class Api::ApiController < ActionController::Base
  # skip_before_action :verify_authenticity_token
  before_action :set_access_control_headers, :authenticate

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = 'POST'
    headers['Access-Control-Allow-Headers'] = 'accept, content-type, x-xsrf-token x-requested-with,Content-Type, Authorization'
  end  

  private
    def authenticate
      if params[:controller] == "api/v1/producs"
        unless true # Citrus.verify_response(params)
          render json: { status: 401, message: "Unauthorized!" }
        end
      end
    end
end
