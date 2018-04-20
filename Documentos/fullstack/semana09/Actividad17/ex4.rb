# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con
# la siguiente estructura:

# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un metodo llamado ladrar que, mediante interpolacion,
# imprima "Beethoven esta ladrando!"
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Cafee}

class Dog
  attr_accessor :nombre
  def initialize(objeto)
    @nombre = objeto[:nombre]
  end
  def ladrar
    "#{nombre} esta ladrando"
  end
  end

  propiedades = { :nombre => 'Bethoven', :breed => 'San Bernardo', :color => 'Café' }

dog = Dog.new(propiedades)
p dog.ladrar
