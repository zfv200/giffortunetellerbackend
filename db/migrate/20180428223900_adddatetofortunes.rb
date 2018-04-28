class Adddatetofortunes < ActiveRecord::Migration[5.1]
  def change
    add_column :fortunes, :date, :string
  end
end
