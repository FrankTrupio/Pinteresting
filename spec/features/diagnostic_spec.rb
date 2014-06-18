require "spec_helper"

describe "Test" do
  describe "When two is equal to two" do
    let(:name_factory) { "test" } 
    let(:user) { create(:user, :name => name_factory) }
    it "asserts true" do
      assert_equal(2, 2)
    end

    it "visits the homepage" do
      visit("/")
      assert_equal(current_path, "/")
      assert_equal(name, user.name)
    end
  end
end
