
Quando('seleciono um checkbox') do
visit('/buscaelementos/radioecheckbox')

    find('label', text: 'black').click
    find('label[for="white"]').click
#comando check pega apenas por "id"
    check('grey', allow_label_click: true)
    sleep(2)
    uncheck('grey', allow_label_click: true)
    sleep(2)
end
  
  Quando('seleciono um radiobox') do
    find('label[for="red"]').click
#choose pega apenas por "id"
sleep(2)
    choose('blue', allow_label_click: true)
sleep(3)


end