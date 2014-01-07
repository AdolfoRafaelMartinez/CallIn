class CreateBilltimes < ActiveRecord::Migration
  def self.up
    create_table :billtimes do |t|
      t.date :when

      t.timestamps
    end
  end

  def self.down
    drop_table :billtimes
  end
end
