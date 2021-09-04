class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :description
      t.string :email
      t.string :telephone01
      t.string :telephone02
      t.references :customer, null: true, foreign_key: true

      t.timestamps
    end
  end
end
