class AddDetectedLanguageToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :detected_language, :string
  end
end
