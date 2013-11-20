require 'spec_helper'

describe TopicsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'topichome'" do
    it "returns http success" do
      get 'topichome'
      response.should be_success
    end
  end

end
