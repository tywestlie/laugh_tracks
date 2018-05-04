RSpec.describe 'A user visits comedians page' do
  it 'shows a comedians header' do
    visit '/comedians'

    expect(page).to have_content('Comedians')
  end

  it 'shows a list of comedian names' do
    Comedian.create(name:'Mitch Hedburg', age: 48)
    Comedian.create(name:'Jim Gafigan', age: 29)
    Comedian.create(name:'Tom Segura', age: 60)
    visit '/comedians'

    expect(page).to have_content('Mitch Hedburg')
    expect(page).to have_content(48)
  end

  # it 'shows a list of comedian specials' do
  #   Comedian.create(name:'Mitch Hedburg', age: 48)
  #   Special.create()
  #   Comedian.create(name:'Jim Gafigan', age: 29)
  #   Comedian.create(name:'Tom Segura', age: 60)
  #
  # end
end
