class Message
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :channel
  field :text

  def to_s
    text
  end
end
