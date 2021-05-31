require 'rails_helper'

RSpec.feature "Projeto", type: :feature do
  
  scenario 'Visitando a página projetos' do
    visit(projects_path) 
    expect(find('h1')).to have_content('Projetos') 
   end
  
   scenario 'Verificando titulos' do
    visit(projects_path)
    expect(page).to have_title('Awesome App | Projetos')
  end

  scenario 'Botão Novo Projeto' do
    visit(projects_path)
    expect(page).to have_link(nil, href: new_project_path )  
  end

  scenario 'Cadastro de Projeto' do
    visit(new_project_path)
    fill_in "project_name",	with: Faker::App.name
    fill_in "project_start_date",	with: Faker::Date.in_date_period
    fill_in "project_end_date",	with: Faker::Date.forward(days: 30)
    click_on('Cadastrar Projeto')
    expect(page).to have_content('Projeto cadastrado com sucesso!') 
  
  end 

  scenario 'Verificando Formulário' do 
    visit(new_project_path)
    click_on('Cadastrar Projeto')
    expect(page).to have_content('não pode ficar em branco')  
  end 

  # Integrar com javascript
  # scenario 'Excluíndo Projeto' do 
  # visit(projects_path)
  # expect(page).to  have_content('O projeto foi  excluído!')
  # end 
 
end
