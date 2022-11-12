require 'rails_helper'

describe "Author without last name", type: :feature do
  it "show index page" do
    visit authors_path
  end

  it "Show overview of all authros" do

    @alan = FactoryBot.create :author
    @alan.save
    visit authors_path

    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_link 'New', href: new_author_path
  end
end