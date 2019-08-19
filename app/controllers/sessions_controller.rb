class SessionsController < ApplicationController

  def index
    @session = Session.all
    session_id = 'session-id'
    url = "/sessions/{session-id}/messages"
  end

  def create
    # @session = Session.new

    # 1. take the session id from the query
    # 2. acces the body and take text and identifier
    # 3. if no text or no identifier respond with a 422 error
    # 4. check the language of the message
    # 5. check if a session with that id already exists
    # 6a. if not: create a new one
    # 6b. if exists: check whether the message language is the same of the
    #     session language. If not: answer with a 422 error
    # 7. save the message
    # 8. respond with 201 and with the correct message

  end

  def show
    # @session = Session.find(params[:id])
    params[:id]
  end

  def postback
    # puts request.body.read
  end

  private

  def session_params
    params.require(:session).permit('session-id')
  end
end
