class HomeController < ApplicationController
  def index
    @eventJSON = Event.all.to_json
    
    respond_to do |format|
      format.html
    end
  end
end
