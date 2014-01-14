Given "I am at $url" do |url|
  visit url
end

When "I select $text link" do |text|
  click_link text
end

And "I enter $text into the Username bar" do |text|
  fill_in 'user_username', :with => text
end

And "I enter $text into the Password bar" do |text|
  fill_in 'user_password', :with => text
end

When "I hit Sign In" do
  click_button 'Sign In'
end

When "I select $text link" do |text|
  click_link text
end

Given "I enter $text into the isim bar" do |text|
  fill_in 'post_name', :with => text
end

Given "I enter $text into the tel bar" do |text|
  fill_in 'post_phone', :with => text
end

Given "I enter $text into the marka bar" do |text|
  fill_in 'post_brand', :with => text
end

Given "I enter $text into the model bar" do |text|
  fill_in 'post_model', :with => text
end

Given "I enter $text into the problem bar" do |text|
  fill_in 'post_problem', :with => text
end

When "I hit Gonder" do
  click_button 'Gonder'
end

Then "I will be presented a page of result including $title" do |title|
  page.should have_xpath("//h1", :text => title)
end