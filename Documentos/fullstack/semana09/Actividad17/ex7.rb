#Ejercicio 7: Objetos y archivos.

#Utilizando el mismo archivo del ejercicio anterior:

#La tienda desea generar un nuevo catálogo que no incluya el
#último precio correspondiente a cada producto debido a que ya
# no comercializa productos de talla XS.

#Se pide generar un método que reciba como argumento los datos del
#archivo catalogo.txt y luego imprima el nuevo catálogo solicitado en
# un archivo llamado nuevo_catalogo.txt


def new_catalogue(filename)
  data = File.open(filename, 'r').readlines
  data.each do |ele|
    catalogue = ele.split(', ').map(&:chomp)
    catalogue.pop
    File.open('nuevo_catalogo.txt', 'a+') { |file| file.print catalogue, "\n" }
  end
end

new_catalogue('catalogo.txt')
