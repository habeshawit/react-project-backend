class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
        # render json: ItemSerializer.new(item)
    end

    def create
        item = Devotion.new(item_params)
        
        if item.save   
            render json: item        
            # render json: ItemSerializer.new(devotion), status: :accepted
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
    #     devotion = Devotion.find_by_id(params[:id])
    #     devotion.title = params[:title]
    #     devotion.date = params[:date]
    #     devotion.verse = params[:verse]
    #     devotion.content = params[:content]
    #     devotion.image_url = params[:image_url]
    #     devotion.category_id = params[:category_id]

    #     if devotion.save
    #         render json: DevotionSerializer.new(devotion), status: :accepted
    #     else
    #         render json: {errors: devotion.errors.full_message}, status: :unprocessable_entity
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

