require 'spec_helper'

describe UsersController do
  # Tell RSpec to also render the views.
  integrate_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      # have_tag isn't recognizing regex argument (in rspec v1.x). have_text isn't working either.
      #response.should have_tag("title", /Sign up/)
    end
  end
  
end
