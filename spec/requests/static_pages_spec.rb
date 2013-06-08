require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { @base_title = "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    
    it "has the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{@base_title}")
    end
    
    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    
    it "does not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
    
  end
  
  describe "Help page" do
    
    it "has the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
    it "has the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{@base_title} | Help")
    end
    
  end
  
  describe "About page" do
    
    it "has the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    
    it "has the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
    
  end
  
  describe "Contact page" do
    
    it "has the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end
    
    it "has the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{@base_title} | Contact Us")
    end
    
  end
end
