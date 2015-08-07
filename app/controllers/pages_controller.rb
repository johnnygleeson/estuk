class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to iphones_path
  	end
  end
end
