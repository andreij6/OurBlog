class Adddetailstoblog < ActiveRecord::Migration
  def up
    add_column :blogs, :category, :string
    add_column :blogs, :title,    :string
    add_column :blogs, :author,   :string
    add_column :blogs, :content,  :text
    
    add_index :blogs, :category
    add_index :blogs, :created_at
  end

  def down
  end
end
