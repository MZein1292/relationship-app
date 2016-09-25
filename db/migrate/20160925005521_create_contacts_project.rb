class CreateContactsProject < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_projects do |t|
      t.references :contacts
      t.references :projects
    end
  end
end
