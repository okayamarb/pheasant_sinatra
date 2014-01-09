require File.dirname(__FILE__) + '/spec_helper'

describe Pheasant do
  include Rack::Test::Methods

  def app
    Pheasant
  end

  describe "/へのアクセス" do
    before { get '/' }
    subject { last_response }
    it "正常なレスポンスが返ること" do
      should be_ok
    end
    it "Helloと出力されること" do
      subject.body.should == "Hello"
    end
  end
end