require "spec_helper"

describe "home page" do

  include RequestSpec

  before do
    visit("/")
  end
  describe "navigation" do
    it "links to about" do
      click_link("about")
      puts "success"
      assert_equal(current_path, "/ab123out")
    end
  end
end
