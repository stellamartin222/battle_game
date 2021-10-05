feature 'See Enemy HP' do
  scenario 'Displays form and has submit button' do
    visit('/battle')
    expect(page).to have_content '100 HP'
  end
end