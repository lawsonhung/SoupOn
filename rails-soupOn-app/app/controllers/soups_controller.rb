class SoupsController < ApplicationController

    def index
        @soups = Soup.all
    end

    def show
        find_soup
    end

    def edit
        find_soup
    end

    def new
        @soup = Soup.new
    end

    def create
        @soup = Soup.create(soup_params)
        if @soup.valid?
          redirect_to @soup
          else
          flash[:errors] = @soup.errors.full_messages
          redirect_to new_soup_path
        end
    end

    def update
        find_soup
        @soup.update(soup_params)
        if @soup.valid?
          redirect_to @soup
          else
          flash[:errors] = @soup.errors.full_messages
          redirect_to edit_soup_path
        end
    end

    def destroy
        find_soup
        @soup.destroy
        redirect_to soups_path
    end

    private

    def soup_params
        params.require(:soup).permit(:name, :ingredients, :img_url)
    end

    def find_soup
        @soup = Soup.find(params[:id])
    end

end
