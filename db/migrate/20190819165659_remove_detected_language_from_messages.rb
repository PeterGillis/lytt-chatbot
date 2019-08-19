class RemoveDetectedLanguageFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :detected_language, :string
  end
end
