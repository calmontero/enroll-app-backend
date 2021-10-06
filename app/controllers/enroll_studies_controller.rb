class EnrollStudiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :authorize, only: [:create, :destroy]

    def create
        enroll = EnrollStudy.create!(enroll_params)
        render json: enroll, status: :created
    end

    def destroy
        enroll = EnrollStudy.find(params[:id])
        enroll.destroy
        head :no_content
    end

    private

    def enroll_params
        params.permit(:start, :progress, :person_id, :program_id)
    end
    
    def render_not_found_response
        render json: { error: "enroll not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
    
end
