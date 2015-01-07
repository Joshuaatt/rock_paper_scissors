require('rspec')
require('rock_paper_scissors')

describe('String#beats?') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end

  it("returns false if argument beats object") do
    expect("rock".beats?("paper")).to(eq(false))
  end

  it("returns tie if argument and object are the same") do
    expect("rock".beats?("rock")).to(eq("tie"))
  end

end
