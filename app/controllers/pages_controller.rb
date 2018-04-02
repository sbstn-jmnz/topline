class PagesController < ApplicationController
  def index
    @clients = Client.all
    @quotations = Quotation.all
  end
end
