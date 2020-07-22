require 'date'
require 'holiday_jp'


module LogicalFriday::Included
  def self.included(mod)
    Date.class_eval do
      define_method :logical_friday? do
        saturday_in_this_week = self + (6 - wday)

        friday? || (self.next_day..saturday_in_this_week.prev_day).all? { |it| HolidayJp.holiday?(it) != nil }
      end
    end
  end
end
