holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holiday|
#     puts "#{season.to_s.capitalize}:"
#     holiday.each do |key, value|
#       key_string = key.to_s.split("_").map(&:capitalize).join(' ')
#       puts "  #{key_string}: #{value.join(", ")}"
#     end
#   end
# end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |key, value|
      key_string = key.to_s.split("_").map(&:capitalize).join(' ')
      puts "  #{key_string}: #{value.join(", ")}"
    end
  end
end