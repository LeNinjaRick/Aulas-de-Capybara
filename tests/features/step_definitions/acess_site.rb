
Quando('eu apertar o botão Começar automação Web') do
    visit('/treinamento/home')
  end
  
  Então('eu espero entrar na proxima pagina com a lista de funcionalidades') do
   expect(page).to have_current_path('https://automacaocombatista.herokuapp.com//treinamento/home', url: true)
   sleep(5)
  end