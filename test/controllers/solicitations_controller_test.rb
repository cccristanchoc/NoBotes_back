require 'test_helper'

class SolicitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitation = solicitations(:one)
  end

  test "should get index" do
    get solicitations_url, as: :json
    assert_response :success
  end

  test "should create solicitation" do
    assert_difference('Solicitation.count') do
      post solicitations_url, params: { solicitation: { description: @solicitation.description, idApplicant: @solicitation.idApplicant, idApplied: @solicitation.idApplied } }, as: :json
    end

    assert_response 201
  end

  test "should show solicitation" do
    get solicitation_url(@solicitation), as: :json
    assert_response :success
  end

  test "should update solicitation" do
    patch solicitation_url(@solicitation), params: { solicitation: { description: @solicitation.description, idApplicant: @solicitation.idApplicant, idApplied: @solicitation.idApplied } }, as: :json
    assert_response 200
  end

  test "should destroy solicitation" do
    assert_difference('Solicitation.count', -1) do
      delete solicitation_url(@solicitation), as: :json
    end

    assert_response 204
  end
end
