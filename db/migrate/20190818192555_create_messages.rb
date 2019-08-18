class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :text
      t.text :messages
      t.string :detected_language

      t.timestamps
    end
  end
end
