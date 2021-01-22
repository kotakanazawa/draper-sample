class UserRegistrationForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attr_accessor :name
  attribute :name, :string
  validates :name, presence: true

  def user
    @user ||= User.new(name: name)
  end

  def save
    return false if invalid?
    user.save
    true
  end
end

