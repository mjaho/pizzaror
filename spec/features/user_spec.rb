require 'spec_helper'
include TestHelper

describe "User" do

  describe "who has registered" do

    before :each do
      user = FactoryGirl.create :user
    end

    it "can sign in with right credentials" do
      visit signin_path
      fill_in('username', with:"Luigi")
      fill_in('password', with:"test")
      click_button('Kirjaudu sisään')

      expect(page).to have_content 'Tervetuloa takaisin!'
    end

    it "can not sign in with incorrect password" do
      visit signin_path
      fill_in('username', with:"Maija")
      fill_in('password', with:"Tatti123")
      click_button('Kirjaudu sisään')

      expect(page).to have_content 'Käyttäjätunnus tai salasana ei täsmää'
    end

    it "can not sign in with incorrect username" do
      visit signin_path
      fill_in('username', with:"Matti")
      fill_in('password', with:"Test123")
      click_button('Kirjaudu sisään')

      expect(page).to have_content 'Käyttäjätunnus tai salasana ei täsmää'
    end

  end

=begin
  describe "who has signed in and is a teacher" do

    before :each do
      FactoryGirl.create :user
      FactoryGirl.create :projectbundle
      sign_in
    end

    it "can access project creation" do
      visit projects_path

      click_link "Luo uusi projekti"
      expect(current_path).to eq(new_project_path)
    end

    it "can not access user creation" do
      visit new_user_path

      expect(current_path).to eq('/signin')
    end

    it "can sign out" do
      click_link "KIRJAUDU ULOS"

      expect(current_path).to eq root_path
      expect(page).to have_content "KIRJAUDU SISÄÄN"
    end

  end

  describe "who has signed in and is an admin" do
    before :each do
      FactoryGirl.create :user, accesslevel:1
      sign_in
    end

    it "can access project creation" do
      visit projects_path

      click_link "Luo uusi projekti"
      expect(current_path).to eq(new_project_path)
    end

    it "can access user creation" do
      visit new_user_path

      expect(page).to have_content 'Uusi käyttäjä'
      expect(current_path).to eq(new_user_path)
    end

    it "can access user list" do
      visit users_path

      expect(page).to have_content 'Käyttäjät'
      expect(current_path).to eq(users_path)
    end

  end
=end
end