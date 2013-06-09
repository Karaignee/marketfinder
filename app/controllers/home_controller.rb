class HomeController < ApplicationController
  def index
    @eventJSON = Event.all.to_json
    @events = Event.includes(:repeat_period) #this says grab the events and also grab the repeat periods

    @repeated = []

    for event in @events
      @repeated.push event

      if event.repeat
        period = event.repeat_period.every_x #mark optimised the DB call here by having the repeatperiod call up in the   event model call

        prev = event
                                             #recurrence times ten can be amended here and set tyo higher or lower as required in future versions
        for i in 1..10
          event_clone = Marshal::load(Marshal.dump(prev)) #copy event but then you have a clone and it changes start for all of them
                                                          #marshal lets you clone/copy the previous event without effecting the old event and then below we change the date of
                                                          #the cloned event if we didn't use marshal this would go and change the old event which had been cloned :-o

          for j in 1..period
            event_clone.start = event_clone.start.tomorrow
            event_clone.end = event_clone.end.tomorrow
          end

          @repeated.push event_clone
          prev = event_clone
        end

      end
    end

    @today = Time.now.beginning_of_day()        #error here ?
    @todays_events = Event.where("start <= ? AND end >= ?", @today, @today)

    @upcoming = Event.where("start > ?", @today)

    respond_to do |format|
      format.html
    end
  end
end
