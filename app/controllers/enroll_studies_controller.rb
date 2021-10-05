class EnrollStudiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :authorize, only: [:show, :create, :update]

    def show
        enroll = find_enroll
        render json: enroll, except: [:created_at, :updated_at]
    end

    def create
        enroll = EnrollStudy.create!(enroll_params)
        render json: enroll, status: :created
    end

    def update
        enroll = find_enroll
        enroll.update!(find_enroll)
        render json: enroll
    end

    private

    def find_enroll
        EnrollStudy.find(params[:id])
    end

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
