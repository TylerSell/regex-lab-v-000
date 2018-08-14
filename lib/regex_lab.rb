def starts_with_a_vowel?(word)
  if word.match(/^[aeiou]/i)
    true
  else word.match(/^[^aeiou]/)
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan((/^un/i) && (/\w+ing/i))
end

def words_five_letters_long(text)
  text.scan(/^\w{5}\b/)
  array = text.split
  array.grep(/^\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z]/) && text.match(/[.?!]$/)
    return true
  else
    return false
  end
end

def valid_phone_number?(phone)
  numbers = phone.scan(/[0-9]/)
  if numbers.length == 10
    return true
  else 
    return false
  end
end
