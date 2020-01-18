User.destroy_all
Job.destroy_all
JobTracker.destroy_all
JobNote.destroy_all

User.create({
    email: "Katie@gmail.com",
    password_digest: "password",
    username: "kwokasch"
})

Job.create({
    company: "Google",
    job_title: "Full Stack Software Engineer",
    tech_stack: "Ruby on Rails, React",
    salary_range: "$60,000 - $80,000" 
})

JobTracker.create({
    user_id: 1,
    job_id: 1,
    applied: "2020-01-18"
})

JobNote.create({
    job_tracker_id: 1,
    interview_questions: "What is your name?"
})