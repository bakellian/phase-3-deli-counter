# def line(people_in_line)
#     if people_in_line.empty? 
#         puts "The line is currently empty."
#     else 
#         sentence = "The line is currently:"
#         people_in_line.each.with_index(1) do |person, position| 
#             sentence <<  " #{position}. #{person}"
#         end
#     puts sentence
#     end
# end

#better way: 
def line(people_in_line)
    if people_in_line.empty?
        puts "The line is currently empty."
    else 
        people = people_in_line.map.each.with_index(1) do |person, position| 
            "#{position}. #{person}"
        end
        puts "The line is currently: " + people.join(" ")
    end
end

def take_a_number(people_in_line, new_person)
    people_in_line << new_person
    # using .length because its always going to be last - why iterate when you can just use .length
    puts "Welcome, #{new_person}. You are number #{people_in_line.length} in line."
end

def now_serving(people_in_line)
    if people_in_line.empty?
        puts "There is nobody waiting to be served!"
    else
        #can use in one line - shift removes from the array but also returns the removed element so we can use the name
        puts "Currently serving #{people_in_line.shift}."
    end
end