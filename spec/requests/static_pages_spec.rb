require 'rails_helper'
# テスト用に書いてみたけど、未実装
RSpec.describe StaticPagesController, type: :controller do
  render_views
  
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  
  describe "GET #home" do
    it "responds successfully" do
      get :home
      expect(response).to have_http_status(:success)
      assert_select "title", "#{base_title}"
    end
  end
  describe "GET #help" do
    it "responds successfully" do
      get :help
      expect(response).to have_http_status(:success)
      assert_select "title", "Help | #{base_title}"
    end
  end
  describe "GET #about" do
    it "responds successfully" do
      get :about
      expect(response).to have_http_status(:success)
      assert_select "title", "About | #{base_title}"
    end
  end
  describe "GET #contact" do
    it "responds successfully" do
      get :contact
      expect(response).to have_http_status(:success)
      assert_select "title", "Contact | #{base_title}"
    end
  end
end