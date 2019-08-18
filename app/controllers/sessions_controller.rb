class SessionsController < ApplicationController

  def index
    @session = Session.all
    # the following is test JSON only!

    render json: {
    "text": "{user-text-input}",
    "identifier": "{unique-generated-id}"

    }
  end

  def show
    # @session = Session.find(params[:id])
  end

  private

  def session_params
    params.require(:session).permit
  end
end
