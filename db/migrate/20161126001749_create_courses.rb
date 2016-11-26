class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :typeOfEvent
      t.integer :price
      t.float :premiumPrice
      t.float :price
      t.string :name
      t.string :image
      t.string :instructor
      t.text :additionalInfo
      t.integer :sizeLimit
      t.text :description
      t.date :startDate

      t.timestamps null: false
    end
  end
end
