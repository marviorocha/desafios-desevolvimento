require 'rails_helper'

RSpec.feature "Atividades", type: :feature do
  
  scenario "Página de atividades" do
     
     visit(activities_path)
     expect(find('h1')).to have_content("Atividades")  

    end
end
