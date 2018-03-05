class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.belongs_to :user, foreign_key: true
      t.string :key
      t.text :content

      t.timestamps
    end
  end
end
