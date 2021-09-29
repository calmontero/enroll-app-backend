class PeopleController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def show
        person = find_person
        render json: person, except: [:created_at, :updated_at]
    end

    def index
        people = Person.all
        render json: people, except: [:created_at, :updated_at]
    end

    def create
        person = Person.create!(person_params)
        render json: person, status: :created
    end

    def update
        person = find_person
        person.update!(person_params)
        render json: person
    end

    def destroy
        person = find_person
        person.destroy
        head :no_content
    end

    private
  
    def find_person
        Person.find(params[:id])
    end

    def person_params
      params.permit(:first_name, :last_name, :email, :state, :city, :phone, :username, :password_digest)
    end

    def render_not_found_response
        render json: { error: "person not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
