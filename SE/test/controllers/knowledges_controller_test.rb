require 'test_helper'

class KnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @knowledge = knowledges(:one)
  end

  test "should get index" do
    get knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_knowledge_url
    assert_response :success
  end

  test "should create knowledge" do
    assert_difference('Knowledge.count') do
      post knowledges_url, params: { knowledge: { average: @knowledge.average, first_note: @knowledge.first_note, name: @knowledge.name, state: @knowledge.state } }
    end

    assert_redirected_to knowledge_url(Knowledge.last)
  end

  test "should show knowledge" do
    get knowledge_url(@knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_knowledge_url(@knowledge)
    assert_response :success
  end

  test "should update knowledge" do
    patch knowledge_url(@knowledge), params: { knowledge: { average: @knowledge.average, first_note: @knowledge.first_note, name: @knowledge.name, state: @knowledge.state } }
    assert_redirected_to knowledge_url(@knowledge)
  end

  test "should destroy knowledge" do
    assert_difference('Knowledge.count', -1) do
      delete knowledge_url(@knowledge)
    end

    assert_redirected_to knowledges_url
  end
end
