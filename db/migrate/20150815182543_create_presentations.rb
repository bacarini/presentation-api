class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
