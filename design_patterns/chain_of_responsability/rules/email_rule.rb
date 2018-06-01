class EmailRule

  def check v
    !(v =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end

end