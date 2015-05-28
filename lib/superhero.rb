require 'faker'
class Superhero
  @@adjectives = ["mega ","super ","epic ", "awesome ", "deadly ", "lethal ", "powerful ", "instantaneous ", "crazy cool ", "wonderous ", "spectacular ", "ingenious ", "mad skillful ", "extraordinary ", "simple ", "weird ", "instinctual ", "hypothetical ", "insurmountable ", "unavoidable ", "uncontrollable ", "killer ", "wicked-awesome ", "sick-nasty ", "janky ", "new-age ", "never before seen ", "special ", "amazing ", "terrible ", "horrible ", "classy ", "terrific ", "mind-bending ", "jaw-dropping ", "", "", "", ""]
  @@superpowers = %{Adhesion
Amphibious
Animal control
Animate/control the dead
Autonomic function control
Body duplication
Body transformation
Bullet-proof
Chemical control
Clairvoyance
Cold generation
Computer hacking
Cosmic awareness
Danger sense
Dark generation/control
Density control
Deus ex machina
Direct computer interface
Earthquake generation
Earth/rock control
Elasticity
Electrical generation/control
Electromagnetism
Empathy
Encyclopedic knowledge
Energy absorption
Energy blasts
Energy manipulation
Enhanced agility
Enhanced common sense
Enhanced senses
Enhanced senses
Escape artist
Explodes
Extra appendage(s)
Extra-dimensional travel
Extreme popularity
Flame generation/control
Flight Flight Flight
Force blasts
Force field generation
Friction manipulation
Gadget creation
Glows in the dark
Growth
Gravity control
Heat generation
Heat vision
Hold breath indefinitely
Hypnosis
Ice generation
Illusion casting
Image projection
Immortality
Incomprehensibility
Incredible balance
Insect control
Instant language understanding
Intangibility
Intuition
Invisibility
Invulnerability
Juggling
Laser vision
Light generation/control
Luck
Lycanthrope
Machine control
Magic spell casting
Magnetism
Martial arts mastery
Matter consumption
Microscopic vision
Mind control
Mind-numbing beauty/ugliness
Molecular control
Odor generation
Omni directional sight
Omnipotence
Omniscience
Perfect pitch
Photographic memory
Plant control
Poison resistance
Power mimicry
Precognition
Prehensile tail
Psychic
Pyrokinesis
Radar sense
Radiation generation/control
Regeneration
Reinforced skeleton
Seventh sense
Shape-shifting
Sharp shooting
Shrinking
Smoke generation/control
Sound generation/control
Speed reading
Super breath
Super hearing
Super intelligence
Super jumping
Super loud voice
Super speed
Super spelling
Super strength Super strength Super strength
Super ventriloquism
Super-human hand-eye coordination
Super-human stamina
Super-human throwing accuracy
Super-human weight-guessing accuracy
Telekinesis
Telepathy
Teleportation
Telescopic vision
Time manipulation
Time travel
Water control
Weapon mastery
Weather control
Weather prediction
Unaided outer space travel
X-ray vision
}.lines
@@orientation = ['neutral', 'evil', 'good']
@@level = ['lawful','neutral','chaotic']
  def self.power
    "#{@@adjectives.sample}#{@@superpowers.sample.downcase.gsub(/\n/, '')}"
  end
  def self.alignment
    "#{@@level.sample}-#{@@orientation.sample}"
  end
  def self.name
    Faker::App.name
  end
  def self.alias
    Faker::Name.name
  end
  def self.nemesis
    title = ["Dr. ", "Mr. ", "The ", "Professor ", "He Whom They Call ", "The One Named ", "Super ", "Ultra ", "Mega ", "The Angry ", "The Last ", "Master ", "", "Cable Guy ", "Miss ", "Maestro ", "Misses ", "Madame ", "Sister ", "The Temptress ", "A Punk Named ", "Puny ", "Tiny ", "Babyface ", "Sinister ", "The Evilest ", "Murder Face ", "Bad ", "Bad Boy ", "Pretty Boy ", "A Girl Named ", "Squidface ", "", "Temper ", "Alien ", "The Skilled ", "Top Dog ", "T-Dawg ", "Tough Nut ", "The Irate ", "", "Ballerina ", "Mob Boss ", "Pretty Tony ", "Robot Model 688-", "Robot Model 42-", "A Poodle Named ", "The Secret Trigger Word ", "", "Mamy ", "The Body ", "Medusa ", "Gin and ", "Siracha Sauce ", "Slick Willy ", "Jennifer ", "Tamany ", "Pool Shark ", "Loan Shark ", "Mama ", "", "The Only ", "", "", "Tiny ", "", "Master ", "Dr. ", "Dr. ", "The ", "The ", "The ", "Miss ", "Misses ", "Mega ", "Ultra ", "Super ", "", "", "", "", Faker::Name.title + " ", Faker::Name.title + " ", Faker::Name.title + " ", Faker::Name.prefix + " ", Faker::Name.prefix + " ", Faker::Name.prefix + " ", Faker::Name.prefix + " ", Faker::Name.prefix, Faker::Name.prefix + " ", Faker::Hacker.adjective + " ", Faker::Hacker.adjective + " ", Faker::Hacker.adjective + " ", Faker::Hacker.abbreviation + " "]
    name = [Faker::App.name, Faker::App.name, Faker::App.name, Faker::App.name, Faker::App.name, Faker::App.name, Faker::App.name, Faker::Name.title, Faker::Name.title, Faker::Name.name, Faker::Name.last_name, Faker::Name.last_name, Faker::Name.last_name, Faker::Name.last_name, Faker::Name.last_name, Faker::Name.first_name, Faker::Name.first_name, Faker::Name.first_name, Faker::Name.first_name, Faker::Name.first_name, Faker::Name.first_name, Faker::App.author, Faker::App.author]
    title = (title + @@adjectives).flatten
    title.sample + name.sample
  end
  def self.weakness
    adjectives = ["shiney ", "sharp ", "slimey ", 'little ', 'angry ', 'frightened ', "painful ", "", "", "", "", "", "", "", "", "", "", "", "", "heavy ", "rusty ", "faded ", "a pack of ", "some ", "any type of ", "hairy ", "cute and cudly ", "burning ", "overhyped ", "loud ", "thick ", "overly attached ", "twin ", "simple ", "wet ", "red ", "blue ", "green ", "yellow ", "orange ", "brown ", "happy ", "sad ", "cool ", "hot ", "tattered ", "paper ", "plastic ", "a call from ", "sliced ", "too many ", "the last ", "too few ", "sticky ", "kisses from ", "lengthy ", "ketchup on ", "beautiful ", "perrywinkle ", "kind "]
    nouns = ["animals", "tacks", "toy cars", "cigarrettes", "cereal", "muffins", "corn", "fish", "monkeys", "bears", "stuffed animals", "cartoons", "weddings", "movie scenes", "books", "people", "songs", "folders", "paper cuts", "kitchen sinks", "newspaper articles", "girls", "boys", "men", "women", "dogs", "cats", "trees", "balls", "liquids", "gasses", "solids", "bushes", "birds", "snakes" ,"wookies", "melodies", "apples", "teens", "gangsters", "reporters", "glasses", "hats", "pizzas", "canolis", "beans", "toddlers", "poodles", "octopi", "spleens", "sweats", "t-shirts", "pants", "hats", "love", "hate", "r&b singers", "royal weddings", "symphonies", "spyglasses", "terraformers", "water-dwellers", "land-walkers", "seedlings", "boulders", "airplanes", "seas", "mountains", "worlds", "pies", "cakes", "drinks", "fluids", "words", "phrases", "eyes", "chairs", "crystals", "gems", "rocks", "vegetables", "salt-water", "mummies", "wolves", "ghosts", "aliens", "rappers", "skeletons", "tissues", "lawyers", "politicians", "pansies", "roses", "trains", "particles", "dust mites", "mosquitos", "hippos"]
    adjectives = (adjectives + @@adjectives).flatten
    adjectives.sample + nouns.sample
  end
  def self.describe
    name = self.name
    "#{name} (alias: #{self.alias}) is #{self.alignment} and their power is #{self.power} #{@@superpowers.sample.downcase.gsub(/\n/, '')}. #{name}'s weakness is #{self.weakness} and their arch-nemesis is #{self.nemesis}"
  end
end