require 'test_helper'

class CategoriesController < ActionController::TestCase
   
   def setup
       @category = Category.create(name: "Sports")
   end
   
   test "should get categories index" do
       get :index
       assert_response :success
   end
   
   test "should get new" do
       get :index
       assert_response :success
   end
   
   test "should get show" do
       get(:show, {'id' => @category.id})
       assert_response :success
   end
   
    
end