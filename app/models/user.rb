class User
  include NoBrainer::Document

  has_many :messages
  has_many :memberships
  has_many :channels, through: :memberships
  field :name
  field :token

  def to_s
    name.to_s
  end
end
