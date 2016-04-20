class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :frontSide
      t.string :backSide

      t.timestamps null: false
    end
  end
end
