# frozen_string_literal: true

# top level application record class
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  self.abstract_class = true
end
