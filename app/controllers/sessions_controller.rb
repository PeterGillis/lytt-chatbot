class SessionsController < ApplicationController

  def index
    @session = Session.all
    session_id = 'session-id'
    url = "/sessions/{session-id}/messages"
  end

  def create
    @session = Session.new
  end

  def show
    # @session = Session.find(params[:id])
    params[:id]
  end

  def postback
    puts request.body.read
  end

  private

  def session_params
    params.require(:session).permit('session-id')
  end
end
