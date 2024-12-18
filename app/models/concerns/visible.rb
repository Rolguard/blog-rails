module Visible
  extend ActiveSupport::Concern
  VALID_STATUSES = [ "public", "private", "archived" ]

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_and_accepted_count
      where(status: "public", approval_status: :accepted).count
    end
  end

  def archived?
    status == "archived"
  end
end
