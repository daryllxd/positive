class Api::V1::HomeController < ActionController::API
  def index
    render json: 'hello world'
  end

end
