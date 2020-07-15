
Quando('interajo com o dropdown e o select') do
    #interagindo com dropdown, que funciona semelhante a dois botoes seguidos
visit('/buscaelementos/dropdowneselect')
find('.btn.dropdown-button').click
find('#dropdown3').click


#interagindo com select:

select 'Firefox', from: 'dropdown'
sleep(2)
#ou
find('option', text: 'Chrome').select_option
sleep(3)
end
  
  Quando('preencho o autocomplete') do
    visit('/widgets/autocomplete')

    find('input[id="autocomplete-input"]').set 'rio'
    find('ul', text: 'Rio de Janeiro').click
sleep(5)  
end