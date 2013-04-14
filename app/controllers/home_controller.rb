class HomeController < ApplicationController
  def index
    @eventJSON = Event.all.to_json
    
    @today = Time.now.beginning_of_day()
    @todays_events = Event.where("start <= ? AND end >= ?", @today, @today)
    
    @upcoming = Event.where("start > ?", @today)
    
    respond_to do |format|
      format.html
    end
  end
end
