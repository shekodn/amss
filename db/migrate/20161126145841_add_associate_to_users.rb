class AddAssociateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :associate, :boolean
  end
end
