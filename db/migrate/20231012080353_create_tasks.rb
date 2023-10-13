class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :due_at
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
