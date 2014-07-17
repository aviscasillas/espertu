class HomeController < ApplicationController
  caches_page :index

  def index
    @contact = Contact.new
  end
end
