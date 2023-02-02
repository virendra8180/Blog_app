class CarsController < ApplicationController
    def new
        @car = Car.new
    end
    def show
        @car = Car.find(params[:id])

    end

    def create
      @car = Car.new(car_params)
       if @car.save
        redirect_to :controller => 'cars', :action => 'home'
       else
        render :new, status: :unprocessable_entity
       end
    end

    def home
        @car=Car.all
        render('home')
        
    end
    def edit
        @car = Car.find(params[:id])
    end
   
  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to :controller => 'cars', :action => 'home'

    #redirect_to root_path, status: :see_other
  end

    private
    def car_params
      params.require(:car).permit(:carname, :company)
    end
end
