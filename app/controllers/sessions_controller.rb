class SessionsController < ApplicationController

  def index
    @sessions = sessions.all
  end
end
