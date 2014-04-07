module TestHelper

  def signin(credentials)
    visit signin_path
    fill_in('username', with:credentials[:username])
    fill_in('password', with:credentials[:password])
    click_button('Kirjaudu sisään')
  end

end