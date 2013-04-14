class ApplicationController < ActionController::Base
  protect_from_forgery
  
  Time::DATE_FORMATS[:simple] = '%d/%m/%Y'
end
