class EmailRule

  def self.check v
    !(v =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end

end