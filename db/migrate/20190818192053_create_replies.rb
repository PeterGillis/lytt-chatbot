class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :shortname
      t.string :string
      t.string :reply_to
      t.string :sent_at
      t.string :integer

      t.timestamps
    end
  end
end
