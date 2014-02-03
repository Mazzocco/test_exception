class Address

  attr_accessor :name, :phone

  def self.read_address_from_file
    #Apro un file di testo in sola lettura
    f = File.new("address.txt", "r")

    #leggo il contenuto del file
    file_content = f.read

    #trasformo tutto il file in un array di righe
    rows = file_content.split("\n")

    #per ogni riga, assegno il valore ad un nuovo Array
    rows.collect do |row|

      puts "Sto leggendo la riga #{row}"

      nome = row.split(",").first
      telefono = row.split(",").last
      Address.new(nome, telefono)
    end

  end

  def initialize(n, p)
    @name = n
    @phone = p
  end

end

