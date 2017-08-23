hash =

{ data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}



# 1) Retrieve the capacity of room 201 and store it in a variable.

capacity = hash[:data][:rooms][0][:capacity]
room_number = hash[:data][:rooms][0][:room_number]
room_id = hash[:data][:rooms][0][:id]
# puts capacity
# puts room_number
# puts room_id


# 2) Find all the events taking place in room 201. Iterate through them and
# print "ok" if the number of planned attendees will fit in the room.

hash[:data][:events].each do |check|
  if check[:room_id] == room_id && check[:attendees] < capacity
    puts "OK! Room #{room_number} can fit #{capacity} and is big enough and We can host this event!"
  # else
  #   puts "Nope, room #{room_number} is too small for the event."
  end
end
