class CreateT1s < ActiveRecord::Migration
  def self.up
    create_table :t1s do |t|
      t.float :f1

      t.timestamps
    end
  end

  def self.down
    drop_table :t1s
  end
end
