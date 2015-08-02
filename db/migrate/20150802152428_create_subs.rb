class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :title
      t.string :content
      t.references :slide

      t.timestamps
    end
  end
end
