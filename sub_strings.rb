dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  matches = Hash.new(0)
  words = words.downcase
  words = words.split(" ")

  dictionary.each do |dword|
    words.each do |cword|
      cword_sub = cword

      while (cword_sub.include?(dword))
        puts "#{cword_sub} includes #{dword}"
        matches[dword] += 1
        cword_sub = cword_sub.sub(dword, "")
      end
    end
  end
  
puts matches
end

substrings("Howdy partner, sit down! How's it going", dictionary)
