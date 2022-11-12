require 'rails_helper'

describe "Show author page", type: :feature do
  it "should show a author page" do
    @alan = FactoryBot.create :author
    @alan.save
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit author_path(@alan)
  end

  it "should show details of an author path" do
    @alan = FactoryBot.create :author
    @alan.save
    visit author_path(@alan)
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
  end
end