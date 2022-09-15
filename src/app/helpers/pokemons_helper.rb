module PokemonsHelper
  def create_type_hash()
    hash = {}
    model = Type.all
    model.each do |data|
      hash[data.type_id] = data.type_name
    end
    return hash
  end

  def create_egg_hash()
    hash = {}
    model = Egg.all
    model.each do |data|
      hash[data.egg_id] = data.egg_name
    end
    return hash
  end

  # def create_name_hash()
  #   hash = {}
  #   model = Egg.all
  #   model.each do |data|
  #     hash[data.egg_id] = data.egg_name
  #   end
  #   return hash
  # end

  def create_img_hash()
    hash = {}
    model = Pokemon.all
    model.each do |data|
      hash[data.name_id] = "poke_#{data.name_id}.png"
    end
    return hash
  end

  def search_type_egg(t,e)
    models = Pokemon.all
    t = t.to_i
    e = e.to_i
     
    if t >= 0 && t <= 18
      models = models.where(type1_id: t).or(models.where(type2_id: t))
    end

    if e >= 0 && e <= 14
      models = models.where(egg1_id: e).or(models.where(egg2_id: e))
    end

    return models, t, e
  end
end
