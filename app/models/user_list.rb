# frozen_string_literal: true

# UserList object
class UserList < ApplicationRecord
  self.table_name = 'user_lists'

  validates_presence_of :email
end
