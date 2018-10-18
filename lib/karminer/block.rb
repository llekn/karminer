class Block
  def initialize(block)
    @hash_anterior = block[:hash_anterior]
    @pago = Transaction.new(block[:pago])
    @numerito = block[:numerito]
    @minero = block[:minero]
    @hash = block[:hash]
  end

  def valid?
    # Tomar el hash del bloque anterior
    # Validar la transaccion del bloque
    # Validar el proof of work
    has_valid_numerito = base58(Digest::SHA256.digest("#{@hash_anterior}|#{@pago.hash}|#{@minero}|#{@numerito}")).donwcase.end_with?('frog')

    @pago.valid? && has_valid_numerito
  end
end
