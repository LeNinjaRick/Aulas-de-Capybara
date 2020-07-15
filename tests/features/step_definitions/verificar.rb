
Quando('clico em um botão') do
    visit('/buscaelementos/botoes')

    find('a[onclick="ativaedesativa1()"]').click
    sleep(2)
end
  
  Então('verifico as informações na tela') do
   page.assert_text(text, 'Você Clicou no Botão!')
   page.has_text?('Você Clicou no Botão!')
   have_text('Você Clicou no Botão!')
sleep(2)
end
  


######################################################




# verificar elementos que sumiram
Quando('clico em botão') do
    visit('/buscaelementos/botoes')

    find('a[onclick="ativaedesativa1()"]').click
    sleep(2)
    find('a[onclick="ativaedesativa1()"]').click
    sleep(2)
end
  
  Então('verifico se as informações na tela sumiram') do
  
 #  page.assert_no_text(text, 'Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
end