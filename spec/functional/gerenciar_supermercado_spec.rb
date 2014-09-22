# coding: utf-8

require 'rails_helper'

feature 'gerenciar Supermercado' do

  scenario 'incluir Supermercado' do #, :js => true  do

    visit new_supermercado_path

    preencher_e_verificar_supermercado



  end

  scenario 'alterar Supermercado' do#, :js => true  do

    supermercado = FactoryGirl.create(:supermercado)

    visit edit_supermercado_path(supermercado)

    preencher_e_verificar_supermercado



  end

   scenario 'excluir supermercado' do #, :js => true do

       supermercado = FactoryGirl.create(:supermercado)

        visit supermercados_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_supermercado

      fill_in 'Nome',  :with => "Supermercado"
      fill_in 'Endereço',  :with => "Endereço"
      fill_in 'Complemento',  :with => "Complemento"
      fill_in 'Bairro',  :with => "Bairro"
      fill_in 'Cidade',  :with => "Cidade"
      fill_in 'Estado',  :with => "Estado"
      fill_in 'CEP',  :with => "CEP"
      fill_in 'Latitude',  :with => "11.1"
      fill_in 'Longitude',  :with => "22.2"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Supermercado'
      expect(page).to have_content 'Endereço: Endereço'
      expect(page).to have_content 'Complemento: Complemento'
      expect(page).to have_content 'Bairro: Bairro'
      expect(page).to have_content 'Cidade: Cidade'
      expect(page).to have_content 'Estado: Estado'
      expect(page).to have_content 'CEP: CEP'
      expect(page).to have_content 'Latitude: 11.1'
      expect(page).to have_content 'Longitude: 22.2'



   end
end