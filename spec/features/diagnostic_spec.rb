require "spec_helper"

describe "Test" do 
    let(:user) { create(:user) }
  describe "random tests" do
    before do
      user
      puts user.name
    end
    it "asserts true" do
      assert_equal(2, 2)
    end

    it "visits the homepage" do
      visit("/")
      assert_equal(current_path, "/")
    end
  end
end
