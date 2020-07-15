Quando('entro na janela e verifico a mensagem') do
visit('/mudancadefoco/janela')
janela = window_opened_by do
click_link 'Clique aqui'
end

#muda de foco para a janela
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        have_text('Você Abriu uma nova janela!!')
#fecha a janela
        janela.close
    sleep(3)
    end


end
  
  Quando('entro no alert e verifico, faço a ação') do
visit('/mudancadefoco/alert')

#js alert
find('button[onclick="jsAlert()"]').click
sleep(2)
page.accept_alert

#Js confirm
click_button 'Clique para JS Confirm'
#cancelando o alert
sleep(2)
page.dismiss_confirm

#Js prompt
click_button 'Clique para JS Prompt'
sleep(2)
page.accept_prompt(with: 'me de um emprego')
#ou para cancelar:
#page.dismiss_prompt



end