class FitnessClassSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :location, :price

  has_many :users
end
