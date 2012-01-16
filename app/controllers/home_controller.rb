class HomeController < ApplicationController
  caches_action :index, :expires_in => 15.minutes
  def index
    @quote = Squirrel.new.status
  end
end
