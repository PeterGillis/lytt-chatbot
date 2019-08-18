class MessagesController < ApplicationController

  def create
    @message = Message.new
    # sample text onlly 'successful reply'
    render json: {
      "message": {
      "identifier": "{unique-generated-id}",
      "detected_language": "es",
      "timestamp": "2020-08-01T18:20:00Z"
      }
    }
  end
end
