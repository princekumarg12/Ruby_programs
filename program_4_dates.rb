require 'date'

def interval_iterator(start_date, end_date, interval)
  start_date = Date.parse(start_date)
  end_date = Date.parse(end_date)
  dates = []

  case interval
  when "monthly"
    # Start from the beginning of the month
    current_date = start_date
    while current_date <= end_date
      dates << current_date.strftime("%d-%m-%Y")
      current_date = current_date.next_month
    end
  when "weekly"
    # Start from the beginning of the week (assume Monday as the start of the week)
    current_date = start_date - start_date.wday + 1
    while current_date <= end_date
      dates << current_date.strftime("%d-%m-%Y")
      current_date += 7
    end
  else
    raise ArgumentError, "Invalid interval. Must be 'monthly' or 'weekly'."
  end

  dates
end

# Test cases
puts interval_iterator("01-01-2016", "31-05-2016", "monthly").inspect

puts interval_iterator("15-01-2016", "20-05-2016", "monthly").inspect

puts interval_iterator("15-01-2016", "20-02-2016", "weekly").inspect
