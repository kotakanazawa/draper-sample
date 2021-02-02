# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_one :profile

  delegate :food, to: :profile
  # これを delegate メソッドで使えるようにしている
  # def food
  #   profile.food
  # end
end
