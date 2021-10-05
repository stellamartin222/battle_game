feature 'Testing infrastucture' do
  scenario 'Can run app and display page' do
    visit('/')
    expect(page).to have_content 'Testing infrastucture'
  end
end