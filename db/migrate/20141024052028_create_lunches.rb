class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
