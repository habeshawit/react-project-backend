class Api::V1::CategoriesController < ApplicationController

    def index
      categories = Category.all
      # render json: CategorySerializer.new(categories)
      render json: categories
    end

    def create
      category = Category.new(category_params)
      
      if category.save   
          render json: category        
      else
          render json: {errors: 'Error creating category'}
      end
  end

  def show 
      category = Category.find_by(id: params[:id])

      if category 
          render json: category
      else 
          render json: {message: 'Category not found.' }
      end 
  end 

  # def update
  #     item = item.find_by_id(params[:id])
  #     item.name = params[:name]
  #     item.description = params[:description]
  #     item.price = params[:price]
  #     item.image_url = params[:image_url]
  #     item.category_id = params[:category_id]

  #     if item.save
  #         render json: ItemSerializer.new(item), status: :accepted
  #     else
  #         render json: {errors: item.errors.full_message}, status: :unprocessable_entity
  #     end
  # end

  def destroy
      category = Category.find(params[:id])
      category.destroy
  end

  private

  def category_params
      params.require(:category).permit(:name)
  end

end
