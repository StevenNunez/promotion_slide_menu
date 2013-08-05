module ProMotionSlideMenu
  module AppDelegate

    def self.included(base)
      base.send :attr_accessor, :slide_menu
    end

    def has_slide_menu?
      !!slide_menu
    end

    def open_slide_menu(menu, content, options={})
      SlideMenuScreen.new(menu, content, options).tap do |slide_menu|
        self.slide_menu = slide_menu
        open_root_screen slide_menu
      end
    end

    def show_menu
      UIApplication.sharedApplication.delegate.slide_menu
    end
  end
end

PM::Delegate.send :include, ProMotionSlideMenu::AppDelegate
