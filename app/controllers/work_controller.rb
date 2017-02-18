class WorkController < ApplicationController
  def timezones
    nyc = "Eastern Time (US & Canada)"
#     @mathieu_timezone = ActiveSupport::TimeZone.find_tzinfo(nyc)
    @mathieu_timezone = 'Tokyo' # ActiveSupport::TimeZone.find_tzinfo("Tokyo")
    @wakeup_time = 6
    @work_time = 8..17
    Time.zone = @mathieu_timezone
    @foo = Time.zone.local(Time.now.year,Time.now.month,Time.now.day,@wakeup_time,0,0).in_time_zone(visitor_timezones)
  end

  private

  def visitor_timezones
    session[:favorite_zone] if ActiveSupport::TimeZone.find_tzinfo(session[:favorite_zone])
  rescue TZInfo::InvalidTimezoneIdentifier
    session[:favorite_zone] = nyc
  end
end
