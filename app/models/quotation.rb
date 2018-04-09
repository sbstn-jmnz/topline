class Quotation < ApplicationRecord
  belongs_to :season
  belongs_to :supplier
  belongs_to :handler
  belongs_to :seller
  belongs_to :client
  belongs_to :paymentterm
  has_many :quotationdetails
  accepts_nested_attributes_for :quotationdetails, reject_if: :all_blank, allow_destroy: true
   #
 #  after_save :generate_order, if: :completed?
#  scope :status, -> { where[status: false] }


#  def completed?
#    self.status == false

#  end

#  def generate_order
#    @order = Quotationdetail.joins(:quotations).where(quotations: { status: false })
#    @order.save
#    render to orders_path
#  end

end
