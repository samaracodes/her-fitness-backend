class UsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :fitness_classes 
end
