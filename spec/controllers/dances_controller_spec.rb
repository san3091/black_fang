require 'rails_helper'

RSpec.describe DancesController, type: :controller do
  before(:each) { @dance = create(:dance) }

  it "renders dance list in json" do
    get :index, format: :json
    expect(response).to have_http_status(:ok)
  end

  it "renders a single dance" do
    get :show, params: { id: 1 }, format: :json
    expect(response).to have_http_status(:ok)
  end
end
