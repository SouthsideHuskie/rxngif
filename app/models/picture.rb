class Picture < ActiveRecord::Base
validates :source, :uniqueness => true

end
