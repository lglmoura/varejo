# coding: utf-8

require 'rails_helper'

feature 'gerenciar Setor' do

  scenario 'incluir Setor' do # , :js => true  do

    visit new_setor_path

    preencher_e_verificar_setor



  end

  scenario 'alterar Setor' do #, :js => true  do

    setor = FactoryGirl.create(:setor)

    visit edit_setor_path(setor)

    preencher_e_verificar_setor



  end

   scenario 'excluir setor' do #, :javascript => true  do

       setor = FactoryGirl.create(:setor)

        visit setors_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_setor

      fill_in 'Nome',  :with => "Padaria"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Padaria'



   end
end