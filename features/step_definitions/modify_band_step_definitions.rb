 Then /^I should be on the Edit Band Page of "Band di Rossi"$/ do
   expect(page).to have_content "Edit Band"
     expect(page).to have_css("#UpdateBand")
 end

 When /^I fill "Description" with "New Description"$/ do
   fill_in("Description", with: "New Description")
 end

And /^I should see "New Description" for the field "Description"$/ do
   expect(page).to have_content "New Description"
end

When /^I visit my Profile Page$/ do
  user = User.find_by email: "mariorossi@gmail.com"
	visit users_show_path(:id => user.id)
end


When /^I press "edit" for the band "Band di Rossi"$/ do
  #(find(:css,"#pnlCreatedBands ul li", :text => "Band di Rossi").find_link "edit"). click
  find(:css, "#edit_band_1").click
end

 And /^I should see "Rome" for the field "City"$/ do
   expect(page).to have_content "Active in: Rome (Latium, Italy)"
 end
