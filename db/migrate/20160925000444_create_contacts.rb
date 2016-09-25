class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :family_name
      t.string :given_names
      t.references :company, foreign_key: true
      t.string :title
      t.string :phonne
      t.string :email
      t.string :website
      t.string :customer_id
      t.text :additional_info

      t.timestamps
    end
  end
end
