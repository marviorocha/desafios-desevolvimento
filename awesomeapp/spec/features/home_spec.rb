require 'rails_helper'

RSpec.feature "Home", type: :feature do
    
 scenario 'Visitando a Página Inicial' do
  visit('/') 
  expect(find('h1')).to have_content('Bem-vindo Awesome App') 
 end

 scenario 'Checando link para atividades' do
   visit('/') 
   click_link(activities_path)
   expect(page).to have_content ('Atividades')
 end

#  scenario 'Checando link para projetos' do
#    visit(root_path) 
#    click_link(projects_path)
#   expect(page).to have_content('Projetos')  
# end


end
