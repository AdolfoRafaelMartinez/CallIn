class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.datetime :when
      t.float :basechrg
      t.integer :hits
      t.float :hitchrg

      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
