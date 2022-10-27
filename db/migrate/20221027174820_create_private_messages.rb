class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :recipient, index: true
      t.references :sender, index: true

      belongs_to :sender, class_name: "User"
      belongs_to :recipient, class_name: "User"
      t.timestamps
    end
  end
end
