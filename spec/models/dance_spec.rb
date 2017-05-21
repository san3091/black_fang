require 'rails_helper'

describe Dance, type: :model do
  let(:dance) { build(:dance) }

  it "makes a dance" do
    expect(dance).to be_truthy
  end
end
