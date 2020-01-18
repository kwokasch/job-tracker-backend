class JobNotesController < ApplicationController
    def index
        @job_notes = JobNote.all

        render json: @job_notes
    end

    def show
        @job_notes = JobNote.find(params[:id])

        render json: @job_notes
    end

    def create
        @job_notes = JobNote.create({
            job_tracker_id: params[:job_tracker_id],
            interview_questions: params[:interview_questions],
            prep_questions: params[:prep_questions],
            improvement: params[:improvement]
        })

        render json: @job_notes, status: :created
    end

    def update
        @job_notes = JobNote.find(params[:id])
        @job_notes = job_notes.update(params[:id])

        redirect_to "http://localhost:3000"
    end

    def destroy
        @job_notes = JobNote.find_by(params[:id])
        @job_notes.destroy
    end
end
