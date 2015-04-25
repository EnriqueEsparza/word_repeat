class String
  define_method(:word_repeat) do
  user_string = "me loves me"

  user_string.split(/ /)

  #user_string.count("me").to_s
  end
end


#["me", "loves", "me"].count("me")
#=> 2
