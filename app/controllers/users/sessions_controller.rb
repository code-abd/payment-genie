class Users::SessionsController < Devise::SessionsController
  respond_to :json

  skip_before_action :verify_authenticity_token, only: [:create, :destroy]

  private

  def respond_with(resource, _opts = {})
    render json: {
      message: "Logged in successfully.",
      user: resource
    }, status: :ok
  end

  def respond_to_on_destroy
    render json: { message: "Logged out." }, status: :ok
  end
end
