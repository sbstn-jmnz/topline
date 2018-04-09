class OrdersController < ApplicationController

  def index
    @orders = Quotation.where(status: true)
  end
end
