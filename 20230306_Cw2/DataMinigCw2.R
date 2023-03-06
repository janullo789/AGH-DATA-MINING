# 1
# 1.1
lista_obecnosci <- c(poniedzialek = 25, wtorek = 30, sroda = 16, czwartek = 20,
                     piatek = 10, sobota = 21, niedziela = 12)
# 1.2
lista_obecnosci["poniedzialek"]
lista_obecnosci["piatek"]

# 1.3
which.max(lista_obecnosci)
which.max(lista_obecnosci)

# 1.4
mean(lista_obecnosci)

# 1.5
sum(lista_obecnosci >= 20)

# 1.6
liczebnosc_grup <- c(poniedzialek = 25, wtorek = 30, sroda = 18, czwartek = 20,
                     piatek = 15, sobota = 21, niedziela = 15)

# 1.7
lista_obecnosci == liczebnosc_grup

# 1.8
lista_obecnosci < (liczebnosc_grup/2)

# 2
# 2.1
wynik <- data.frame("US" = c(460.998, 290.475, 309.306), 
                    "non-US" = c(314.4, 247.9, 165.8))
rownames(wynik) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

print(wynik)

# 2.2
wynik[3,]

# 2.3
wynik[1,2]

# 3
# 3.1
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1.000, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1.00, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

result <- data.frame(name, type, diameter, rotation, rings)
print(result)

# 3.2
result[4,3]

# 3.3
result[7,]

# 3.4
str(result)

# 3.5
result$rings

# 3.6
planets_rings <- result[result$rings == TRUE, ]
print(planets_rings)

# 3.7
small_planets <- result[result$diameter < 1,]
print(small_planets)

# 4
# 4.1
# Wektor czynnikowy nieuporządkowany
wektor_czynnikowy_1 <- factor(c("A", "B", "C", "B", "A"))
# Wektor czynnikowy uporządkowany
wektor_czynnikowy_2 <- factor(c("mały", "średni", "duży", "średni", "mały"),
                              ordered = TRUE, levels = c("mały", "średni", "duży"))

wektor_czynnikowy_1
wektor_czynnikowy_2

# 4.2
typeof(wektor_czynnikowy_1)
typeof(wektor_czynnikowy_2)

# 4.3
table(wektor_czynnikowy_1)
table(wektor_czynnikowy_2)


# 5
calcAve = function(a) {
  freq = 15;
  score = 0.9 * a[2] + 0.05 * a[3] + 0.05 * a[4]
  if (a[1] < 0.5*freq)
    return("brak zaliczenia")
  else {
    if (a[2] < 50)
      return(2.0)
    else {
      if ( score >= 90)
        return(5.0)
      else if (score >= 80)
        return(4.5)
      else if (score >= 70)
        return(4.0)
      else if (score >= 60)
        return(3.5)
      else if (score >= 50)
        return(3.0)
    }
  }
}
# brak zaliczenia
vec1 = c(1, 60, 70, 20)
calcAve(vec1)
# zaliczenie 
vec2 = c(14, 50, 100, 100)
calcAve(vec2)

# 6
library(gapminder)
library(dplyr)

# 6.1
gapminder %>%
  filter(year==2002, country=="China")

# 6.2
gapminder %>%
  filter(year==1957) %>%
  arrange(desc(pop))

# 6.3
gapminder %>%
  filter(year==2007) %>%
  mutate(lifeExpMonths=lifeExp*12) %>%
  arrange(desc(lifeExpMonths))

# 6.4
gapminder %>%
  filter(year==1957) %>%
  mutate(medianlifeExp=median(lifeExp)) %>%
  mutate(maxGdpPercap=max(gdpPercap))

# 6.5
gapminder %>%
  group_by(continent,year) %>%
  mutate(medianlifeExp=median(lifeExp)) %>%
  mutate(meanGdpPercap=mean(lifeExp))


# 7
# 7.1
data1 <- read.csv("studenci_140-GIN-1S-185_g1_2023-01-15.csv")
write.csv(data1, "plik1.csv")
