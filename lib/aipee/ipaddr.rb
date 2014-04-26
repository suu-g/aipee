require 'ipaddr'

class IPAddr
  def +(addr)
    case addr
    when Fixnum
      return self.clone.set(addr_mask(@addr + addr))
    when String
      return self + IPAddr.new(addr)
    when IPAddr
      return self + addr.to_i
    else
      raise RuntimeError, "Wrong arguments for IPAddr#+ -- class #{addr.class} not supported."
    end
  end
end

