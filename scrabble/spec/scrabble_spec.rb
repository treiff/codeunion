require 'rspec'
require 'scrabble'

describe "#score_calc" do
  it "returns a fixnum" do
    expect(score_calc("A")).to eq(1)
  end

  it "returns return a fixnum" do
    expect(score_calc("A")).to be_kind_of(Fixnum)
  end

  it "handles lowercase input" do
    expect(score_calc("o")).to eq(1)
  end

  it "returns 3 for 'go'" do
    expect(score_calc("go")).to eq(3)
  end

  it "returns 16 for 'zebra'" do
    expect(score_calc("zebra")).to eq(16)
  end
end
