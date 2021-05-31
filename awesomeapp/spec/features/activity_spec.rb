require 'rails_helper'

RSpec.feature "Atividades", type: :feature do
  
  scenario 'Visitando a página Atividades' do
    visit(activities_path) 
    expect(find('h1')).to have_content('Atividades') 
   end
  
   scenario 'Verificando titulos' do
    visit(activities_path)
    expect(page).to have_title('Awesome App | Atividades')
  end

  scenario 'Botão Nova Atividade' do
    visit(activities_path)
    expect(page).to have_link(nil, href: new_activity_path )  
  end

  scenario 'Cadastro de Atividade' do
    visit(new_activity_path)
     fill_in "activity_name_activity",	with: Faker::App.name
     fill_in "activity_start_date",	with: Faker::Date.in_date_period
     fill_in "activity_end_date",	with: Faker::Date.forward(days: 30)
     choose "activity_finish_true"
    click_on('Cadastrar Atividade')
    expect(page).to have_content('Atividade cadastrado com sucesso!') 
  
  end 

  scenario 'Verificando Formulário' do 
    visit(new_activity_path)
    click_on('Cadastrar Atividade')
    expect(page).to have_content('não pode ficar em branco')  
  end 

  
end