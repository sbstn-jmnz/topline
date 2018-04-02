class OrdersController < ApplicationController

  def index
    @quotations = Quotation.where(status: true)
    @quotationdetails = Quotationdetail.where(quotation_id: @quotations)

  end
end
