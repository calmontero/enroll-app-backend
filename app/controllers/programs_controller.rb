class ProgramsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :authorize, only: [:index, :show]

    def index
        render json: Program.all
    end

    def show
        program = find_program
        render json: program, except: [:created_at, :updated_at]
    end

    def create
        program = Program.create!(program_params)
        render json: program, status: :created
    end

    def update
        program = find_program
        program.update!(program_params)
        render json: program
    end

    private

    def find_program
        Program.find(params[:id])
    end

    def program_params
        params.permit(:name, :summary, :duration, :image_url, :rating)
    end
    
    def render_not_found_response
        render json: { error: "program not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
