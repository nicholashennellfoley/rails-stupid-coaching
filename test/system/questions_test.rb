require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    take_screenshot
    click_on 'Ask'
    take_screenshot

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'saying Hello? yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    take_screenshot
    click_on 'Ask'
    take_screenshot

    assert_text 'Silly question, get dressed and go to work!'
  end

  test 'saying I am going to work yields a happy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    take_screenshot
    click_on 'Ask'
    take_screenshot

    assert_text 'Great!'
  end
end
