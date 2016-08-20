require "rails_helper"

RSpec.feature "Users can create new projects" do 
	scenario "with valid attributes" do
		visit "/"
		
		click_link "New Project"

		fill_in "project[name]", with: "Sublame Text 3"
		fill_in "project[description]", with: "A text editor for everyone"
		click_button "Create Project"

		expect(page).to have_content "Project has been created"
		
	end
	
end

