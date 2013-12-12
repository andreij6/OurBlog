class Adddescriptiontoblogs < ActiveRecord::Migration
  def up
    add_column :blogs, :description, :text
  end

  def down
  end
end
