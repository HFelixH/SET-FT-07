class Owner < ActiveRecord::Base
  has_many :cats

  # def as_json(options = {})
  #   {
  #     name: name,
  #   }
  # end

  # def to_json(*options)
  #   as_json(*options).to_json(*options)
  # end
end
