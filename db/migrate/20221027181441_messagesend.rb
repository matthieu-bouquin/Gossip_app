class Messagesend < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_message_recipients do |t|
      t.belongs_to :sender, class_name: "User"
      t.belongs_to :recipient, class_name: "User"
  end
end
