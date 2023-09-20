# initialize empty hash map doctors for count
# initialize varialble that can count total number of doctors starting from 0
# go through each cell in the matrix (use for each)
# check doctor id increase count if found more than once in the map
# find doctors in each hospital find value for each count\
# return total doctors with different ids  in multiple hospitals

def solution(a)
    doctor_count = Hash.new(0)

    a.each do |row|
        unique_elements = row.uniq
        # puts "#{unique_elements}"
        # puts "#{row}"
        unique_elements.each do |doctor_id|
            doctor_count[doctor_id] += 1
        end
    end
    doctor_count.values.count { |count| count > 1}
end

a1 =     [ [4, 3], [5, 5], [6, 2] ]

puts solution(a1)


# a1.each do |row|
#     unique_elements = row.uniq
#     puts "Original row: #{row}"
#     puts "Unique elements: #{unique_elements}"
#   end