class SpaceAge
  attr_accessor :seconds
  @@ORBITAL_PERIOD = {
    :Earth => 31557600,
    :Mercury =>  7600543.81992,
    :Venus =>  19414149.052176,
    :Mars =>  59354032.690079994,
    :Jupiter =>  374355659.124,
    :Saturn =>  929292362.8848,
    :Uranus =>  2651370019.3296,
    :Neptune =>  5200418560.032001
  }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    @seconds / @@ORBITAL_PERIOD[:Earth]
  end

  def on_mercury
    @seconds / @@ORBITAL_PERIOD[:Mercury]
  end

  def on_venus
    @seconds / @@ORBITAL_PERIOD[:Venus]
  end

  def on_mars
    @seconds / @@ORBITAL_PERIOD[:Mars]
  end
  
  def on_jupiter
    @seconds / @@ORBITAL_PERIOD[:Jupiter]
  end

  def on_saturn
    @seconds / @@ORBITAL_PERIOD[:Saturn]
  end

  def on_uranus
    @seconds / @@ORBITAL_PERIOD[:Uranus]
  end

  def on_neptune
    @seconds / @@ORBITAL_PERIOD[:Neptune]
  end
end
