class HomeController < ApplicationController
  layout 'top'
  def top
    render :layout => 'top'
  end
  
  def about
  end
end
