require 'bookmark'

describe Bookmark do
  describe '.all' do
    it "returns a list of bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Search Engines')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      #expect(bookmarks.first.id).to eq Bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe ".create" do
    it "adds a new bookmark to the list" do
      bookmark = Bookmark.create(url: 'http://www.steam.com', title: 'Gaming').first
      expect(bookmark['url']).to eq 'http://www.steam.com'
      expect(bookmark['title']).to eq 'Gaming'
    end
  end
end
