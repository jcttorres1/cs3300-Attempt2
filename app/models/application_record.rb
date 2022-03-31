class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  validates_presence_of :title, :description
end
