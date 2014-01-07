class AddSuspendedToAccount < ActiveRecord::Migration
  def self.up
    add_column :accounts, :suspended, :boolean
  end

  def self.down
    remove_column :accounts, :suspended
  end
end
