puts "Hello world!"

def test
	yield 10
	puts "W metodzie"
	yield "Hi!"
	yield nil
end

test {|i| puts "W bloku z parametrem #{i} typu #{i.class}"}

stolice = {"Litwa" => "Wilno", "Czechy" => "Praga"}
stolice["Norwegia"] = "Oslo"
puts stolice["Litwa"]
puts stolice["Polska"]

stolice.each_key do |k|
	puts "#{k}"
end

stolice.each_value do |m|
	puts "#{m}"
end

stolice.each do |k,m|
	puts "#{m} (#{k})"
end

Time.new
Time.now # alias dla Time.new
teraz = Time.new
puts teraz.inspect # konwersja na String
puts teraz.to_s # konwersja na String jawną funkcją konwertującą
puts "#{teraz.hour}:#{teraz.min}" # liczby mogą być jednocyfrowe
puts teraz.strftime("%H:%M") # jawne formatowanie daty

2.times do
	puts "Hi!"
end

begin
	a = 2/0
rescue ZeroDivisionError
	puts "Dzielenie przez zero"
rescue NoMemoryError
	retry
else
	puts "Niespodziwany problem"
ensure
	puts "Koniec dzielenia"
end

class Samochod
	@@liczba_samochodow=0
	
	def initialize(marka, model, cena)
	@marka=marka
	@model=model
	@cena=cena
	@@liczba_samochodow+=1
	end

	def wyswietl()
	puts "#@marka #@model w cenie #@cena"
	end

	def self.ile_samochodow()
	@@liczba_samochodow
	end
end

s = Samochod.new('Fiat', 'Panda', 27000)
s.wyswietl
puts Samochod.ile_samochodow

class Samochod
	attr_reader :marka, :model
	attr_accessor :cena
end

s.cena = 26500
puts s.marka
puts s.model
puts s.cena