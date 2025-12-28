module Api  
    module V1
        class BrandsController < ApplicationController
            before_action :set_brand, only: %i[ show update destroy ]

            # GET /brands
            def index
                @brands = Brand.all
                render json: @brands
            end

            # GET /brands/1
            def show
                render json: @brand
            end

            # POST /brands
            def create
                @brand = Brand.new(brand_params)

                if @brand.save
                    render json: @brand, status: :created, location: api_v1_brand_url(@brand)
                else
                    render json: @brand.errors, status: :unprocessable_content
                end
            end

            # PATCH/PUT /brands/1
            def update
                if @brand.update(brand_params)
                    render json: @brand
                else
                    render json: @brand.errors, status: :unprocessable_content
                end
            end

            # DELETE /brands/1
            def destroy
                @brand.destroy!
            end

            private
                # Use callbacks to share common setup or constraints between actions.
                def set_brand
                    @brand = Brand.find(params.expect(:id))
                end

                # Only allow a list of trusted parameters through.
                def brand_params
                    params.expect(brand: [ :name ])
                end
        end
  end
end
