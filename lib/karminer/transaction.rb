class Transaction
  def initialize(transaction)
    @de = transaction[:de]
    @nonce = transaction[:nonce]
    @para = transaction[:para]
    @karma = transaction[:karma]
    @picticlines = transaction[:picticlines]
    @firma = transaction[:firma]
  end

  def valid?
    Bitcoin::OpenSSL_EC.recover_compact(@firma, hash) == @de
  end

  def hash
    Digest::SHA256.digest("#{@de}|#{@para}|#{@piticlines}")
  end
end
