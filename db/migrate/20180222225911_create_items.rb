class CreateItems < ActiveRecord::Migration[5.1]
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :course
      t.string :desc
      t.integer :price
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
