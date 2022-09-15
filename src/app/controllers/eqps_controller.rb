class EqpsController < ApplicationController
  include EqpsHelper

  def index
    @option_hash_c1 = { 0 => '指定なし', 1 => '物理防御力', 2 => '魔法防御力',
                        3 => 'パラメータ1', 4 => 'パラメータ2', 5 => 'パラメータ3',
                        6 => 'パラメータ4', 7 => 'パラメータ5' }
    @option_list_c2 = [0, 5, 10, 15, 20]
    @option_hash_c3 = { 0 => '以上', 1 => '以下', 2 => '一致' }
    @option_hash_c4 = { 0 => '指定なし', 1 => '物理防御力', 2 => '魔法防御力',
                        3 => 'パラメータ1', 4 => 'パラメータ2', 5 => 'パラメータ3',
                        6 => 'パラメータ4', 7 => 'パラメータ5' }
    @option_hash_c5 = { 0 => '降順', 1 => '昇順' }
    @option_list_c6 = [10, 25]

    @c1 = params[:c1]
    @c2 = params[:c2]
    @c3 = params[:c3]
    @c4 = params[:c4]
    @c5 = params[:c5]
    @c6 = params[:c6]

    # @total_index_1 = conditional_search(@c1, @c2, @c3)
    # @total_index_2 = sort_total(@total_index_1, @c1, @c4, @c5)

    @eqp1s = Eqp1.all
    @eqp2s = Eqp2.all
    @eqp3s = Eqp3.all
    @eqptotals = Eqptotal.all
  end
end
