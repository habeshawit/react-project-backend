class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
        # render json: ItemSerializer.new(item)
    end

    def create
        item = Item.new(item_params)
        
        if item.save   
            render json: item        
            # render json: ItemSerializer.new(item), status: :accepted
        else
            render json: {errors: 'Error creating item'}
        end
    end

    def show 
        item = Item.find_by(id: params[:id])

        if item 
            render json: item
        else 
            render json: {message: 'item not found.' }
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
        item = Item.find(params[:id])
        item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :qty, :price, :image_url, :category_id)
    end

end

