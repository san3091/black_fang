require 'rails_helper'

RSpec.describe Video, type: :model do

  let(:video) { build :video }
  let(:parent_video) { build :video }
  let(:child_video) { build :video }

  before(:each) do 
    video.parents << parent_video 
    video.children << child_video 
  end

  it "associates parent videos" do
    parent_title = video.parents.first.title
    expect(parent_title).to be parent_video.title
  end

  it "associates child videos" do
    child_title = video.children.first.title
    expect(child_title).to be child_video.title
  end
end
