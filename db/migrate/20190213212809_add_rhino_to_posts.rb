class AddRhinoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rhino, :boolean
  end
end
