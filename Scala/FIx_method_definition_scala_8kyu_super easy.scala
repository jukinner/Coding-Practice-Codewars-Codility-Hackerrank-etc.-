// The function is not returning the correct values. Can you figure out why?

// get_planet_name(3); //should return "Earth"

object GetPlanetName { 
  def get_planet_name(n: Int): String = {
    val solarSystem = Map(1 -> "Mercury", 2 -> "Venus", 3 -> "Earth", 4 -> "Mars",
                         5 -> "Jupiter", 6 -> "Saturn", 7 -> "Uranus", 8 -> "Neptune", 9 -> "Pluto")
    solarSystem(n)
  }
}


// easier way with just variable. 
object GetPlanetName {

  val get_planet_name = Map(
    1 -> "Mercury",
    2 -> "Venus",
    3 -> "Earth",
    4 -> "Mars",
    5 -> "Jupiter",
    6 -> "Saturn",
    7 -> "Uranus",
    8 -> "Neptune"
  )
}

// With a match/case statement 
object GetPlanetName {

  def get_planet_name(i: Int): String = {
    i match {
      case 1 => "Mercury"
      case 2 => "Venus"
      case 3 => "Earth"
      case 4 => "Mars"
      case 5 => "Jupiter"
      case 6 => "Saturn"
      case 7 => "Uranus"
      case 8 => "Neptune"
      case _ => throw new IllegalArgumentException()
    }
  }
  
}