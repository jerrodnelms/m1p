class AlterColumnTypeIsAdminFromUsers < ActiveRecord::Migration
  def self.up
    change_column :users, :is_admin, :boolean, 'boolean USING CAST(is_admin AS boolean)'
  end
  def self.down
    change_column :users, :is_admin, :string
  end
end
