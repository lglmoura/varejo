class CreateSetors < ActiveRecord::Migration
  def change
    create_table :setors do |t|
      t.string :nome

      t.timestamps
    end
  end
end
