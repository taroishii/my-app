class CreateLectureNames < ActiveRecord::Migration[5.0]
  def change
    create_table :lecture_names do |t|
      t.string :content

      t.timestamps
    end
  end
end
