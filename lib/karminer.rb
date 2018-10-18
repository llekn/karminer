require 'karminer/version'

# require other files here!

module Karminer
  class Transaction
    def initialize(transaction)
    end

    def valid?
      # 2.1. Se debe validar que pago.karma + pago.piticlines > balance(pago.de).
      # 2.2. Se debe validar que pago.nonce > ultimo_nonce(pago.de).
      # 2.3. Se debe validar que recover_compact(pago.firma, SHA256("{de}{para}{piticlines}") == pago.de.
    end
  end

  class Blockchain
    MINER_ADDRESS = 'foo'

    def initialize
      @addresses = {}
      @blocks = []
    end


    def validate_block(block)
      # Tomar el hash del bloque anterior
      # Validar la transaccion del bloque
      # Validar el proof of work
    end

    def add_block(block)
      # Cada vez que llega una actualización del bloque, por cada bloque nuevo (bloques después del último bloque conocido)
      # Agrega el nuevo bloque actualizando @blocks
    end

    def add_transaction(transaction)
      # agregua un cambio de balance en @addresses
    end

    def valid?
    end
  end

  class Address
    def initialize
      @nonce = nil
      @balance = 1000
    end
  end




end
