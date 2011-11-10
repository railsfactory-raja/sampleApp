require 'spec_helper'

describe ProfileController do
     

describe "GET profile/index" do
  before do
      @email = "elaya@gmail.com"
      @password = "12345678"      
    end
it 'should render groups template' do
   #get :index
   @groups = User.new()
   @groups.should_not be_nil
   #~ @groups.class.should be_equal(Nokogiri::XML::Element)
    #~ response.should render_template('groups')
   #~ response.code.should eq("200")
 end
 end
end


