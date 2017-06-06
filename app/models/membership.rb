class Membership
  include NoBrainer::Document

  belongs_to :user
  belongs_to :channel
end
