def get_most_common_letter(text)
    counter = Hash.new(0)
    #p text.gsub(/[^a-z]/, "")
    text.gsub(/[^a-z]/, "").chars.each do |char|
     #p  char 
      counter[char] += 1
    
    end
    #p counter
    #p counter.to_a.sort_by { |k, v| v }
     counter.to_a.sort_by { |k, v| v }[-1][0]
  end
  
  # Intended output:
  # 
  puts get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"