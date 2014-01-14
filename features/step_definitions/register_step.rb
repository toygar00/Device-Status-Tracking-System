Given /^kullanici web sitesini ziyaret eder$/ do
  visit url
end

When /^uye ol sayfasina gider$/ do
  click_link "new_user"
end

Then /^butona tiklar$/ do
  click_button "Sign_up"
end

And /^Uyarı mesajini gorur$/ do
  expect(page).to have_selector('div.alert.alert-error')
end