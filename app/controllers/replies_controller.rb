# frozen_string_literal: true

class RepliesController < ApplicationController
  def index
    session = Session.find(params[:session_id])
    render json: session.replies
  end
    # @reply = Reply.all
    # "/sessions/{session-id}/replies"
    # 1.  Check if the session ID exists
    # 1b. If not return 404 error
    # 2.  If yes fetch list of replies

    # When session is validated by the messages controller; the language
    # of the request is checked and passed to the replies controller
    # The correct reply will be called from the relevant language YML file:
    # * EN template for English
    # * DE template for German
    # * ES template for Spanish

    # sample German template:
    # render JSON:
    # {
    #   "replies": [
    #     {
    #       "message": "Hallo! Ich bin ein virtueller Assistent und ich bin hier, um zu helfen. Was möchtest du tun?",
    #       "shortname": "de.salutation",
    #       "reply_to": "{first-message-identifier}",
    #       "sent_at": "{timestamp}"
    #     },
    #     {
    #       "message": "In Zukunft werde ich in der Lage sein, jede deiner Fragen zu beantworten",
    #       "shortname": "de.after_salutation",
    #       "reply_to": "{second-message-identifier}",
    #       "sent_at": "{timestamp}"
    #     }
    #   ]
    # }
#   end
end
