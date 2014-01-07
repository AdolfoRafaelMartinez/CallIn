class CreateXactions < ActiveRecord::Migration
  def self.up
    create_table :xactions do |t|
      t.integer :accnum
      t.timestamp :when
      t.text :what
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :xactions
  end
end
