class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @page_title = "How to use this demo"
  end

  def admin
  end

  def manager
  end
end
