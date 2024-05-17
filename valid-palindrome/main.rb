def is_palindrome(s)
  formatted_string = reformat(s)
  formatted_string == formatted_string.reverse
end

def reformat(string)
  string.downcase.strip.gsub(/[^a-z0-9]/i, '')
end


puts(is_palindrome("A man, a plan, a canal: Panama"))
puts(is_palindrome("race a car"))
puts(is_palindrome(" "))
