#!/usr/bin/env ruby
def extract_info(log_entry)
    sender = log_entry.match(/\[from:(.*?)\]/)[1]
    receiver = log_entry.match(/\[to:(.*?)\]/)[1]
    flags = log_entry.match(/\[flags:(.*?)\]/)[1]
  
    [sender, receiver, flags]
  end
  
  log_entry = ARGV[0]
  
  if log_entry.include?("Receive SMS") || log_entry.include?("Sent SMS")
    sender, receiver, flags = extract_info(log_entry)
    puts "#{sender},#{receiver},#{flags}"
  end
