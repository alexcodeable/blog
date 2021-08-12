class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def all_articles
  end
end

