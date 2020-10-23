# frozen_string_literal: true

require 'test_helper'

# impements autotests class
class AutomorphsControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get automorphs_input_url
    assert_response :success
  end

  test 'should get view' do
    get automorphs_view_url
    assert_response :success
  end

  test 'should get parsed seq' do
    get automorphs_view_url, params: { search_range: '1 2 9 16 7 5 4' }
    assert_equal assigns[:result], [[1], [9, 16], [4]]
  end

  test 'should get empty for 3 ,5 , 7' do
    get automorphs_view_url, params: { search_range: '3 5 7' }
    assert_equal assigns[:result], 'no such sequences to output[]'
  end

  test 'should get incorrect msg for letters' do
    get automorphs_view_url, params: { search_range: 'hrshrshs' }
    assert_equal assigns[:result], 'incorrect input'
  end

  test 'should get empty for empty input' do
    get automorphs_view_url, params: { search_range: '' }
    assert_equal assigns[:result], 'no such sequences to output[]'
  end
end
