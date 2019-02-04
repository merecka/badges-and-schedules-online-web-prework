speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speakers.collect{|x|badge_maker(x)}
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |speaker, index|
    room_assignments.push("Hello, #{speaker}! You'll be assigned to room #{index+1}!")
  end
  room_assignments
end

def printer(speakers)
  batch_badge_creator(speakers).each{|x| puts x}
  assign_rooms(speakers).each{|x| puts x}
end
