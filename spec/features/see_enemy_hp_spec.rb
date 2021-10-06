feature 'See Enemy HP' do
  scenario 'Displays form and has submit button' do
    visit('/play')
    expect(page).to have_content 'HP = 100'
  end
end