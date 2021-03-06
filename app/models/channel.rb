class Channel
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  has_many :messages
  has_many :memberships
  has_many :users, through: :memberships
  field :name

  def to_s
    name
  end
end
