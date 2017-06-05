class Channel
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  has_many :messages
  field :name

  def to_s
    name
  end
end
