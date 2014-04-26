class IPAddr
  def +(num)
    return self.clone.set(addr_mask(@addr + num))
  end
end

