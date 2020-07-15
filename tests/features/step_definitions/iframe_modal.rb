
Quando('entro no iframe e preencho os campos') do
visit('/mudancadefoco/iframe')

within_frame('id_do_iframe') do
    #aqui colocamos as ações dentro do iframe
    fill_in(id: 'first_name', with: 'Ricardo')
    fill_in(id: 'password', with: 'JUnior')

end
sleep(3)


end
  
  Quando('entro no modal e verifico o texto') do
visit('/mudancadefoco/modal')
find('a[href="#modal1"]').click
within('#modal1') do
#faço validação no modal
    have_text('Modal Teste')
end
sleep(2)

end
  
  Quando('fecho o modal') do
find('a[class="modal-close waves-green btn-flat"]').click
sleep(2)
end