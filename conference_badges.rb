# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  msgList = []
  attendees.each{|name| msgList.push(badge_maker(name))}
  return msgList
end

def assign_rooms(attendees)
  assign_rooms_msg = []
  attendees.each_with_index{|attendee_name, index|
    assign_rooms_msg.push("Hello, #{attendee_name}! You'll be assigned to room #{index + 1}!")
  }
  return assign_rooms_msg
end

def printer(attendees)
  batch_badge_creator(attendees).each{|name| puts name}
  assign_rooms(attendees).each{|msg| puts msg}
end
