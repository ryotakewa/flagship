class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  module Length
    TITLE = 255.freeze
    TEXT  = 65535.freeze
    PHOTO = 255.freeze
  end
end
