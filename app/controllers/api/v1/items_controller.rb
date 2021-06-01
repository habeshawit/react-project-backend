class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def create
        item = Item.new(item_params)
        if item.save   
            render json: {message: "Item successfully posted", item: item }       
        else
            render json: {message: item.errors.full_messages, item: item}, status: 501
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

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: 'Successfully deleted' }
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :price, :condition, :image_url, :category_id, :user_id)
    end

end

