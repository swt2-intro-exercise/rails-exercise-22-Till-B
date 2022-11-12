require 'rails_helper'

describe "Show index page", type: :feature do
  it "show index page" do
    visit author_index_path
  end

  it "Show overview of all authros" do

    @alan = FactoryBot.create :author
    @alan.save
    visit author_index_path

    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_link 'New', href: new_author_path
  end
end