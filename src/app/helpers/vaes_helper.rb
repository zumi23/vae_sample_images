module VaesHelper
  def get_image_path_format(c='x', nz=1)
    if c == 'x'
      c2 = 'd'
    else
      c2 = 'c'
    end
    if nz == nil
      nz = 1
    end
    path_format = "#{c2}#{nz}"
  end

  def get_image_path(c, nz, l)
    if nz == nil
      nz = 1
    end
    if l == nil
      l = 0
    end

    if c == nil
      c2 = 'd'
    elsif c == 'x'
      c2 = 'd'
    elsif c == 'o'
      c2 = 'c'
    elsif c == 'r'
      c2 = 'r'
      nz = nil
    end
    
    path = "#{c2}#{nz}/#{l}.png"
  end
end
