class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string :name
      t.string :state
      t.float :first_note
      t.float :average

      t.timestamps
    end
  end
end
