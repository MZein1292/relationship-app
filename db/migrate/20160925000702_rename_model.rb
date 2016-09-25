class RenameModel < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :custtomer_id, :customer_id
  end
end
