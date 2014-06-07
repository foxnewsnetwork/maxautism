class CreateAutismBoards < ActiveRecord::Migration
  def change
    create_table :autism_boards do |t|
      t.string :speaker
      t.text :thoughts, null: false
      t.integer :fedoras, null: false, default: 0
      t.integer :fingers, null: false, default: 0
      t.timestamps
    end
  end
end
