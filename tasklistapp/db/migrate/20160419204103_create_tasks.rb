class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :completion_indicator

      t.timestamps null: false
    end
  end
end
