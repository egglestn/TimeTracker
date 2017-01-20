class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :project, foreign_key: true
      t.date :day
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
