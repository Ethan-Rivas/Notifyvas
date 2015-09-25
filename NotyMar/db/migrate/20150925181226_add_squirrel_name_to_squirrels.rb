class AddSquirrelNameToSquirrels < ActiveRecord::Migration
  def change
    add_column :squirrels, :squirrel_name, :string
  end
end
