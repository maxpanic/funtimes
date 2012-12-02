Given /^the following categories exist:$/ do |table|
  table.hashes.each do |category|
   Category.create!(category)
  end
end

And /^I click the edit link for the category named "(.*)"$/ do |cat_name|
  @category = Category.find_by_name(cat_name)
  visit path_to('the edit category page for %d' % @category.id)
end
