class VaesController < ApplicationController
  include VaesHelper

  def home
  end

  def real_image_sample
  end

  def repara
  end

  def nz_mapping
  end

  def generated_image_sample
    @conv_ary = ["x", "o"]
    @nz_ary = [1, 2, 4, 8, 16, 32, 64]
    @conv = params[:conv]
    @nz = params[:nz]
    @path_format = get_image_path_format(@conv, @nz)
  end

  def compare_images
    @conv_ary = ["x", "o"]
    @nz_ary = [1, 2, 4, 8, 16, 32, 64]
    @label_hash = { "T-shirt/top" => 0, "Trouser" => 1, "Pullover" => 2, "Dress" => 3, "Coat" => 4,
                    "Sandal" => 5, "Shirt" => 6, "Sneaker" => 7, "Bag" => 8, "Ankle boot" => 9 }
    @conv1 = params[:conv1]
    @conv2 = params[:conv2]
    @nz1 = params[:nz1]
    @nz2 = params[:nz2]
    @label = params[:label]
    @path0 = get_image_path('r', nil, @label)
    @path1 = get_image_path(@conv1, @nz1, @label)
    @path2 = get_image_path(@conv2, @nz2, @label)
  end
end
