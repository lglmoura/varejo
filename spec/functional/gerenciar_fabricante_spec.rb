# coding: utf-8

require 'rails_helper'

feature 'gerenciar Fabricante' do

  scenario 'incluir Fabricante' do # , :js => true  do

    visit new_fabricante_path

    preencher_e_verificar_fabricante



  end

  scenario 'alterar Fabricante' do #, :js => true  do

    fabricante = FactoryGirl.create(:fabricante)

    visit edit_fabricante_path(fabricante)

    preencher_e_verificar_fabricante



  end

   scenario 'excluir fabricante' do #, :javascript => true  do

       fabricante = FactoryGirl.create(:fabricante)

        visit fabricantes_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_fabricante

      fill_in 'Nome',  :with => "Coca-Cola"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Coca-Cola'



   end
end