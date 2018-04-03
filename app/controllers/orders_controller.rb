class OrdersController < ApplicationController

  def index
    @quotations = Quotation.where(status: true)
  end
end
