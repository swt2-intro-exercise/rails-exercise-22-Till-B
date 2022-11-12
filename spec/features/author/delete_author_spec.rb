require 'rails_helper'

describe "Delete Author", type: :feature do

  it "should be able to delete author" do
    @alan = FactoryBot.create :author
    @alan.save

    visit authors_path
    expect(page).to have_text('Delete')
    @count = Author.count
    click_link('Delete')
    expect(Author.count).to eq(@count - 1)
  end
end