class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :state, :city, :phone, :username, :password_digest

end
