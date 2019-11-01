class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :starts_at
      t.date :repeats
      t.date :repeats_end
      
      t.timestamps
    end
  end
end
