class AddSessionIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_reference :replies, :session, foreign_key: true
  end
end
