class CreateJobTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :job_trackers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.string :connections
      t.date :applied
      t.date :phone_screening
      t.date :interview_1
      t.date :interview_2
      t.date :interview_3
      t.date :interview_4

      t.timestamps
    end
  end
end
