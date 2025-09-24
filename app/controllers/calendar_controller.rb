class CalendarController < ApplicationController
def index
    @calenders = calender.all
  end

end
