class CreateCategoryTest < ActionDispatch::IntegrationTest

    setup do
      @admin_user = User.create(username: "johndoe", email: "johndoe@example.com",
                                password: "password", admin: true)
      sign_in_as(@admin_user)
    end
  
    test "get new category form and create category" do
      get "/categories/new"
      assert_response :success
    end