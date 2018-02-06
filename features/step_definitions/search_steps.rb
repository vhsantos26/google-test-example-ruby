require_relative '../pages/google'

google_search = App::Pages::Search::IndexPage.new
google_result = App::Pages::Result::IndexPage.new

Given('I access the Google') do
  google_search.load
end

When('I search for {string}') do |ci_name|
  @ci = ci_name
  google_search.search_for(@ci)
end

Then('I see the CI searched on top of the list') do
  expect(google_result.results.first).to have_content(@ci)
end
