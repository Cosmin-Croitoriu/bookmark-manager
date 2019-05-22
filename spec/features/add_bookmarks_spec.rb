feature "add bookmarks" do
  scenario "it lets user add bookmarks" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.twitter.com')
    fill_in('title', with: 'Social Media')
    click_button('Submit')
    expect(page).to have_link("Social Media", href: "http://www.twitter.com")
  end
end
