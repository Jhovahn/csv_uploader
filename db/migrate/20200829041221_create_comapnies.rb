class CreateComapnies < ActiveRecord::Migration[6.0]
  def change
    create_table :comapnies do |t|
      t.string :name
      t.string :manager
      t.string :status
      t.integer :terms

      t.timestamps
    end
  end
end
