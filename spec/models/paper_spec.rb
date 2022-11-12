require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have required parameters" do
    paper = Paper.new(title: "Test", venue: "Potsdam",year: 2022)
    expect(paper.title).to eq("Test")
    expect(paper.venue).to eq("Potsdam")
    expect(paper.year).to eq(2022)
  end

end
