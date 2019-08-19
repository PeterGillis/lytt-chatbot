class MessagesController < ApplicationController
  def index
    @message = Message.all
  end

  def show
    # @message = Message.find(params[:id])
    # 1. Get the message identifier
    # 2. check if there is an exitsing message
    # 2a. if there is no message, return 404 error
    # 2b. if there is a message, success response
    # 3.
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

      # 3. if no text or no identifier respond with a 422 error
      # 4. check the language of the message
      # 5. check if a session with that id already exists
      # 6a. if not: create a new one
      # 6b. if exists: check whether the message language is the same of the
      #    session language. If not: answer with a 422 error
      # 7. save the message
      # 8. respond with 201 and with the correct message

    end

  private

  def session_params
    params.require(:session).permit(:id)
  end
end
