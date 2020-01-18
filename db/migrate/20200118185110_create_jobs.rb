class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :job_title
      t.text :job_description
      t.string :tech_stack
      t.string :recruiter
      t.string :salary_range
      t.text :about_info
      t.text :extras
      
      t.timestamps
    end
  end
end
