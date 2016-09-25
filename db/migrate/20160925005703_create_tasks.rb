class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :status
      t.references :project, foreign_key: true
      t.datetime :due_at

      t.timestamps
    end
  end
end
