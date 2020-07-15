
Quando('acesso a url de botoes') do
visit('/buscaelementos/botoes')
end
  
  Então('eu verifico se os elementos estão corretos') do
#all busca todos
  page.all('.btn')
  #find busca um elemento mapeado
   #busca por ID
    find_by_id('teste')
    #busca por botao
      find_button(class: 'btn waves-light')
      #busca pelo primeiro elemento
    first('.btn')
    #busca por link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end





############################################################

#Comando click busca por texto
#Comando find busca por elemento

Quando('clico em um botão e em um link') do
visit('/')
click_on('Começar Automação Web')# same as click_link_or_button 


visit('/buscaelementos/botoes')

find('a[onclick="ativaedesativa1()"]').click
find('a[onclick="ativaedesativa1()"]').double_click
find('a[onclick="ativaedesativa1()"]').right_click
click_button(class: 'btn waves-light')


visit('/')
click_link('Batista no Youtube')
sleep(5)

end



################################################

Dado('que eu tenha um email') do |tabela_de_info|
    tabela_de_info.hashes.each do |e_mail|   
        @email = e_mail['email'].to_s
    end
    tabela_de_info.hashes.each do |endereco|
        @endereco = endereco['endereco'].to_s
    end
    tabela_de_info.hashes.each do |universidade|
        @universidade = universidade['universidade'].to_s
    end
    tabela_de_info.hashes.each do |profissao|
        @profissao = profissao['profissao'].to_s
    end

end

Quando('faço o cadastro') do 
    
    visit('/users/new')

fill_in(id: 'user_name', with: 'Ricardo')
find('#user_lastname').set('Vaz Domingues Junior')
find('#user_email').send_keys("#{@email}")
find('#user_address').set("#{@endereco}")
fill_in(id: 'user_university', with: "#{@universidade}")
fill_in(id: 'user_profile', with: "#{@profissao}")
fill_in(id: 'user_gender', with: 'Masculino')
fill_in(id: 'user_age', with: '19')

find('input[name="commit"]').click
sleep(5)
end
  
  Então('verifico o cadastro se esta correto') do
@texto = find('#notice')
expect(@texto.text).to eq 'Usuário Criado com sucesso'

end