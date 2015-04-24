require('rspec')
require('./lib/word_repeat.rb')

describe ('Array#word_repeat') do
  it('splits user string into array') do
    expect(("me loves me").word_repeat()).to(eq(["me", "loves", "me"]))
  end

end
