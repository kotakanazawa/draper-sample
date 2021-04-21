# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  age        :integer
#  food       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_profiles_on_user_id         (user_id)
#  index_profiles_on_user_id_and_id  (user_id,id) UNIQUE
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
