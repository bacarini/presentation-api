class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :content
      t.references :presentation

      t.timestamps
    end
  end
end
