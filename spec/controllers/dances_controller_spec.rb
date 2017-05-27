require 'rails_helper'

RSpec.describe DancesController, type: :controller do
  it "renders dance list in json" do
    get :index
    expect(response).to have_http_status(:ok)
  end
end
