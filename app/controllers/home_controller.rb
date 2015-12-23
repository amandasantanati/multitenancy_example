class HomeController < ApplicationController
  def index
    @domains = Domain.all
  end
end
