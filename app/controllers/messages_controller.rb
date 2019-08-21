class MessagesController < ApplicationController
  def index
    @message = Message.all
  end

  def show
    # @message = Message.find(params[:id])
    # 1. Get the message identifier
    # 2. Check if there is an existing message
    # 2a. If there is no message, return 404 error
    # 2b. If there is a message, success response
  end

  def create
    # @message = Message.new
    # 1. take the session id from the query
    session_id = params[:session_id]

    # 2. access the body and take text and identifier
    body = JSON.parse request.body.read
    user_text = body[:text]
    identifier = body[:identifier]

    # 3. If no text or no identifier respond with a 422 error
    if !user_text || !identifier
      render JSON:
      {
        "error": {
          "code": 422,
          "message": "You need to provide an identifier in the request payload"
        }
      }
    end
    # 4. Check the language of the message

    user_language = CLD.detect_language(user_text)[:code]

    # Languages should be 'de' 'en' or 'es' only

    # 5. Check if a session with that id already exists
    if Session.exists?(id: params[:session_id])
      # 6a. If not: create a new one
      session = Session.find_by(params[:id])
    else
      session = Session.create(id: session_id, detected_language: user_language)
    end
    # 6b. If exists: check whether the message language is the same as the
    #    session language.

    # if user_language == session.detected_language
    #   message = Message.save

    # else
    #   render JSON:
    #   {
    #     "error": {
    #      "code": 422,
    #      "message": "Unfortunately we don't have support for your language yet."
    #     }
    #   }
    # end

    # 6c. If not: answer with a 422 error
    # 7. Save the message
    # 8. Respond with 201 and with the correct message
  end

  private

  def session_params
    params.require(:session).permit(:id)
  end
end
