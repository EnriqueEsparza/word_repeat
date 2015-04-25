require('rspec')
require('./lib/word_repeat.rb')

describe ('word_repeat') do
  it('splits user string into array') do
    expect(("me loves me").word_repeat()).to(eq(["me", "loves", "me"]))
  end

#  it('returns number of times a given word repeated in an array') do
#    expect((["me", "loves", "me"]).word_repeat()).to(eq(2))
#  end

end
