class AddNumber < ActiveRecord::Migration
  def change
    add_column :lessons, :number, :int
  end
end
