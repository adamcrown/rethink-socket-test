class Message
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :channel
  belongs_to :user
  field :text

  def to_s
    text
  end
end
