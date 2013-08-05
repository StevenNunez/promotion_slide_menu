describe ProMotionSlideMenu::AppDelegate do

  before do
    @delegate = UIApplication.sharedApplication.delegate
  end

  it "should have a 'slide_menu' attribute" do
    @delegate.respond_to?(:slide_menu).should == true
  end

  it "should not have a slide menu by default" do
    @delegate.has_slide_menu?.should == false
  end

  it "returns it has a slide menu" do
    @delegate.open_slide_menu(nil, nil).should.be.instance_of ProMotionSlideMenu::SlideMenuScreen
    @delegate.has_slide_menu?.should == true
  end 

  it "should respond to 'open_slide_menu'" do
    @delegate.respond_to?(:open_slide_menu).should == true
  end

  it "#open_slide_menu should return a SlideMenuScreen" do
    @delegate.open_slide_menu(nil, nil).should.be.instance_of ProMotionSlideMenu::SlideMenuScreen
  end 

  it "should have a SlideMenuScreen as the rootViewController" do
    @delegate.window.rootViewController.should.be.instance_of ProMotionSlideMenu::SlideMenuScreen
  end

end
