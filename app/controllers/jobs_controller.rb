class JobsController < ApplicationController
    def index
        @jobs = Job.all

        render json: @jobs, include: :users
    end

    def show
        @job = Job.find(params[:id])

        render json: @job
    end

    def create
        @job = Job.create({
            company: params[:company],
            job_title: params[:job_title],
            job_description: params[:job_description],
            tech_stack: params[:tech_stack],
            recruiter: params[:recruiter],
            salary_range: params[:salary_range],
            about_info: params[:about_info],
            extras: params[:extras]
        })

        render json: @job, status: :created
    end

    def update
        @job = Job.find(params[:id])
        @job = job.update(params[:id])

        redirect_to "http://localhost:3000"
    end

    def destroy
        @job = Job.find_by(params[:id])
        @job.destroy
    end
end
