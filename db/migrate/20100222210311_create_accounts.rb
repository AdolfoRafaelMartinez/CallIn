class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.integer :accnum
      t.string :accname
      t.float :accescrw

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
