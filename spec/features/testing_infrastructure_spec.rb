feature 'testing infrastucture' do
  scenario 'it loads with hello world' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end
