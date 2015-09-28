class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :place
      t.integer :capacity
      t.integer :duration
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
