class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
        # render json: items.with_attached_image
        
    end

    def create
        # binding.epry
        item = Item.new(item_params)
        

        # item.images.attach(params[:item][:images])
        if item.save   
            # binding.pry
            render json: {message: "Item successfully posted", item: item }       
        else
            render json: {message: item.errors.full_messages, item: item}, status: 501
        end
    end

    def show 
        item = Item.find_by(id: params[:id])

        if item 
            render json: item
            # render json: item.with_attached_image

        else 
            render json: {message: 'item not found.' }
        end 
    end 

    def update
        item = Item.find(params[:id])
        item.update_attributes(item_params)
        render json: item
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: 'Successfully deleted' }
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :price, :condition, :image_url, :category_id, :user_id, :image)
    end

end

