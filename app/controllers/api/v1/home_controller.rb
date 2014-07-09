class Api::V1::HomeController < ActionController::API
  def index
    render json: 'hello world'
  end

  def create
    render json: 'posted!'
  end

end
