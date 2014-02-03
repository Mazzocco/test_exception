load "address.rb"
#test

begin

  puts Address.read_address_from_file.inspect

rescue Errno::ENOENT => e

  puts "Errore: Non è presente il file address.txt"

rescue Exception => e

  puts "Errore generico"

end



