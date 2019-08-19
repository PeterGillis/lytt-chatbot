class MessagesController < ApplicationController
  def index
    @message = Message.all
  end

  def show
    # @message = Message.find(params[:id])
    # 1. Get the message identifier
    # 2. Check if there is an exitsing message
    # 2a. If there is no message, return 404 error
    # 2b. If there is a message, success response
  end

  def create
    # @session = Session.new
    # 1. take the session id from the query
    sessionid = params[:session_id]
    # 2. acces the body and take text and identifier
    body = JSON.parse request.body.read
    text = body[:text]
    puts text
    # identifier
    # 3. If no text or no identifier respond with a 422 error
    # 4. Check the language of the message
    # 5. Check if a session with that id already exists
    # 6a. If not: create a new one
    # 6b. If exists: check whether the message language is the same of the
    #    session language. If not: answer with a 422 error
    # 7. Save the message
    # 8. Respond with 201 and with the correct message
  end

  private

  def session_params
    params.require(:session).permit(:id)
  end
end
