class DemoController < ActionController::API

  def index
    if params[:message].empty?
      raise StandardError.new("empty message")
    end
    render json: {message: params[:message]}
  end
end
