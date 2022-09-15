module EqpsHelper
  #1 条件を取得
  #2 モデルを読み込む
  #3 合計値が条件を満たす組み合わせ[i, j, k]を求める

  #4 並べ替え
  #5 表示件数指定(10, 25)
  
  
  # def conditional_search(c1, c2, c3)
  #   #1 条件を取得
  #   c1 = c1.to_i
  #   c2 = c2.to_i

  #   if c3 == "以上"
  #     c3 = 0
  #   elsif c3 == "以下"
  #     c3 = 1
  #   else # 一致
  #     c3 = 2
  #   end

  #   #2 モデルを読み込む
  #   model1 = Eqp1.all
  #   model2 = Eqp2.all
  #   model3 = Eqp3.all
  #   total = []

  #   #3 合計値が条件を満たす組み合わせ[i, j, k]を、リストに追加
  #   model1.each_with_index do |m1, i|
  #     model2.each_with_index do |m2, j|
  #       model3.each_with_index do |m3, k|
  #         tmp_total = m1.c1 + m2.c1 + m3.c1
  #         if c1 == 0
  #           if tmp_total >= c2
  #             total.push([i, j, k])
  #           end
  #         elsif c1 == 1
  #           if tmp_total <= c2
  #             total.push([i, j, k])
  #           end
  #         else
  #           if tmp_total == c2
  #             total.push([i, j, k])
  #           end
  #         end
  #       end
  #     end
  #   end
  #   return total
  # end

  # def sort_total(ijk_ary, c1, c4, c5)
  #   #4 並べ替え
  #   hash = {}

  #   ijk_ary.each do |ijk|
  #     hash["#{ijk[0]}#{ijk[1]}#{ijk[2]}"] = model1.find(i).c1 + model2.find(i).c1 + model3.find(i).c1
  #   end

  #   if c4 == 0 # 降順
  #     hash.sort{|(k1, v1), (k2, v2)| v1 <=> v2}.reverse.to_h
  #   else # 昇順
  #     hash.sort{|(k1, v1), (k2, v2)| v1 <=> v2}.to_h
  #   end

  #   #5 表示件数指定(10, 25) 未完成
  #   total_2 = []
  #   for i in 0..c5-1
  #     total_2.push(hash[先頭])
  #   end

  #   return total
  # end

    
    
end
