class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :type
      t.text :qualifications
      t.string :poistion
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
