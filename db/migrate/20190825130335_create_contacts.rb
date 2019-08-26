class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :name
      t.string :email
      t.string :telephone
      t.text :message

      t.timestamps
    end
  end
end
