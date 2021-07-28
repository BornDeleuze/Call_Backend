class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.string :user_id
      t.string :username
      t.string :conversation_id

      t.timestamps
    end
  end
end
