require 'spec_helper'

describe ErrorController do

  describe "GET 'routingerror'" do
    it "returns http success" do
      get 'routingerror'
      response.should be_success
    end
  end

end
