class PagesController < ApplicationController
  def index

    @quotations = Quotation.all
    @orders = Order.all
  end
end
