# == Schema Information
#
# Table name: autism_boards
#
#  id         :integer          not null, primary key
#  speaker    :string(255)
#  thoughts   :text             not null
#  fedoras    :integer          default(0), not null
#  fingers    :integer          default(0), not null
#  created_at :datetime
#  updated_at :datetime
#

class Autism::Board < ActiveRecord::Base
  self.table_name = 'autism_boards'
end
