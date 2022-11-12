require 'rails_helper'

describe "Edit Page", type: :feature do
  it "show editpage" do
    @alan = FactoryBot.create :author
    @alan.save
    visit edit_author_path(@alan)
  end

  it "should have input fields" do
    @alan = FactoryBot.create :author
    @alan.save
    visit edit_author_path(@alan)

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should update database" do
    @alan = FactoryBot.create :author
    @alan.save
    visit edit_author_path(@alan)

    expect(@alan.first_name).to eq('Alan')
    page.fill_in 'author[first_name]', with: 'Bruda'
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.first_name).to eq('Bruda')
  end
end