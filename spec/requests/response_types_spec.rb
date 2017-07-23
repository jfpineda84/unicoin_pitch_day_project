require 'rails_helper'

RSpec.describe "ResponseTypes", type: :request do
  describe "GET /response_types" do
    it "works! (now write some real specs)" do
      get response_types_path
      expect(response).to have_http_status(200)
    end
  end
end
