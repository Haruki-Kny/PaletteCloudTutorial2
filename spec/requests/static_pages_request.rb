require 'rails_helper'
# テスト用に書いてみたけど、未実装
RSpec.describe "Posts", type: :request do
  describe "[Action test]" do
    before do
      @user = FactoryBot.create(:user, :a)
    end
  end
end