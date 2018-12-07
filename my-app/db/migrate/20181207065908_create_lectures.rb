class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.references :lecture_name, foreign_key: true
      t.references :lecturer, foreign_key: true
      t.integer :year
      t.references :kind, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end

