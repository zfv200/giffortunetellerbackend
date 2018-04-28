class CreateFortunes < ActiveRecord::Migration[5.1]
  def change
    create_table :fortunes do |t|
      t.string :gif
      t.string :message
      t.belongs_to :user

      t.timestamps
    end
  end
end
