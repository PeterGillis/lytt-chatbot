Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # will match /sessions
  resources :sessions do
    # will match /sessions/{session-id}/messages
    # and /sessions/{session-id}/messages/{message-id}
    resources :messages, only: [:index, :show]
    # will match /sessions/{session-id}/replies
    resources :replies, only: [:index]
  end
end
