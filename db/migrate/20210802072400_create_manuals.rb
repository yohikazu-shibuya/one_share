class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.string :name,             null: false
      t.text :question,           null: false
      t.text :answer,           null: false
      t.timestamps
    end
  end
end
