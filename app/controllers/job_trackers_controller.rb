class JobTrackersController < ApplicationController
    def index
        @job_trackers = JobTracker.all

        render json: @job_trackers, include: :job_notes
    end

    def show
        @job_tracker = JobTracker.find(params[:id])

        render json: @job_tracker
    end

    def create
        @job_tracker = JobTracker.create({
            user_id: params[:user_id],
            job_id: params[:job_id],
            connections: params[:connections],
            applied: params[:applied],
            phone_screening: params[:phone_screening],
            interview_1: params[:interview_1],
            interview_2: params[:interview_2],
            interview_3: params[:interview_3],
            interview_4: params[:interview_4]
        })

        render json: @job_tracker, status: :created
    end

    def update
        @job_tracker = JobTracker.find(params[:id])
        @job_tracker = job_tracker.update(params[:id])

        redirect_to "http://localhost:3000"
    end

    def destroy
        @job_tracker = JobTracker.find_by(params[:id])
        @job_tracker.destroy
    end
end
