class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.integer :number ,        null: false
      t.integer :attendance,     null: false
      t.timestamps
    end
  end
end
