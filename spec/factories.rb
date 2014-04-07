FactoryGirl.define do
  factory :user do
    username "Luigi"
    firstname "Kalervo"
    lastname "Pizzanen"
    password "test"
    password_confirmation "test"
    userlevel 1
  end
end

FactoryGirl.define do
  factory :admin, class:User do
    username "admin"
    firstname "Antti"
    lastname "Admin"
    password "test"
    password_confirmation "test"
    userlevel 2
  end
end