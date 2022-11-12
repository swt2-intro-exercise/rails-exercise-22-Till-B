require 'rails_helper'

describe "Show index page", type: :feature do
  it "show index page" do
    visit authors_path
  end

  it "Show overview of all authros" do

    @alan = FactoryBot.create :author
    @alan.save
    visit authors_path

    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(page).to have_text("Mind 49: 433-460")
    expect(page).to have_text{1950}
  end

  it "should show author name" do
    @paper = FactoryBot.create :paper
    visit papers_url
    expect(page).to have_text(@paper.authors[0].name)
  end
end