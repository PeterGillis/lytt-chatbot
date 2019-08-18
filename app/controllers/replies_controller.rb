class RepliesController < ApplicationController
  def index
    @reply = Reply.all
    # sample text onlly 'successful reply'
    render json: {
    "replies": [
      {
        "message": "Hallo! Ich bin ein virtueller Assistent und ich bin hier, um zu helfen. Was möchtest du tun?",
        "shortname": "de.salutation",
        "reply_to": "{first-message-identifier}",
        "sent_at": "{timestamp}"
       },
       {
         "message": "In Zukunft werde ich in der Lage sein, jede deiner Fragen zu beantworten",
         "shortname": "de.after_salutation",
         "reply_to": "{second-message-identifier}",
         "sent_at": "{timestamp}"
       }
      ]
    }
  end
end
