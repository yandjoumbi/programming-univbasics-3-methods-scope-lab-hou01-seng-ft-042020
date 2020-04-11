def mario
  phrase ="It's-a me, Mario!"
  puts phrase
end
mario


def toadstool
  status = 'Thank You Mario! But Our Princess Is In Another Castle!'
  puts status
end
toadstool

def all_phrases
  mario()
  toadstool()
end

describe "link" do
  it "puts out 'It's Dangerous To Go Alone! Take This.'" do
    expect{link}.to output("It's Dangerous To Go Alone! Take This.\n").to_stdout
  end
end

describe "all_phrases" do
  it "takes in an argument and puts out the catch phrase" do
    expect{all_phrases}.to output(/It's-a me, Mario!\n/).to_stdout
    expect{all_phrases}.to output(/Thank You Mario! But Our Princess Is In Another Castle!\n/).to_stdout
    expect{all_phrases}.to output(/It's Dangerous To Go Alone! Take This.\n/).to_stdout
  end
end