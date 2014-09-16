# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supermercado do
    nome "MyString"
    endereco "MyString"
    complemento "MyString"
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    cep "MyString"
    latitude 1.5
    longitude 1.5
  end
end
