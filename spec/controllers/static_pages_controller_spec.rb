require 'spec_helper'

describe StaticPagesController do

  describe "GET 'characters'" do
    it "returns http success" do
      get 'characters'
      response.should be_success
    end
  end

end
