# Ejercicio 6: Objetos y archivos.

# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los
# productos que ofrece una tienda junto con los precios de las
# tallas L, M, S y XS.
# El siguiente codigo define la clase Product y ademas realiza la
# lectura del archivo.
# Se pide:
# Optimizar el codigo implementando el operador splat al momento de
# instanciar los productos
# Generar un método que permita calcular el promedio de precio por producto.
class Product
  attr_accessor :name, :sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_f)
  end

  def average_price
    @sizes.inject(&:+) / sizes.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
  print product.name
  print product.average_price
end
