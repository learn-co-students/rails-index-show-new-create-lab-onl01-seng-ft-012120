require 'pry'

class CouponsController < ApplicationController
  
    def index
      @coupons = Coupon.all
    end
  
    def show
      @coupon = Coupon.find(params[:id])
    end
  
    def new
    end
  
    def create
        attrib = params[:coupon]
      @coupon = Coupon.new
      @coupon.coupon_code = attrib[:coupon_code]
      @coupon.store = attrib[:store]
      @coupon.save
      redirect_to coupon_path(@coupon)
    end
  
  end