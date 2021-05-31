require 'rails_helper'

RSpec.feature "Home", type: :feature do
    
 scenario 'Visitando a Página Inicial' do
  visit('/') 
  expect(find('h1')).to have_content('Awesome App') 
 end

 scenario 'Verificando Titulos' do
  visit(root_path)
  expect(page).to have_title('Awesome App | Bem-vindo!')
end

 scenario 'Checando links menu' do
   visit('/') 
   expect(page).to have_link(nil, href: root_path)
   expect(page).to have_link(nil, href: projects_path)
   expect(page).to have_link(nil, href: activities_path)
 end

 

end
