# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed at least 20 plant species for the app
plant_species_data = [
  {
    scientific_name: "Monstera deliciosa",
    common_name: "Swiss Cheese Plant",
    description: "A popular tropical houseplant with large, perforated leaves.",
    care_guide: "Bright, indirect light. Water when top inch of soil is dry. Likes humidity.",
    photo_url: "https://images.unsplash.com/photo-1506744038136-46273834b3fb"
  },
  {
    scientific_name: "Ficus lyrata",
    common_name: "Fiddle Leaf Fig",
    description: "Tall, dramatic plant with large, violin-shaped leaves.",
    care_guide: "Bright, filtered light. Water when soil is dry 1-2 inches down. Avoid drafts.",
    photo_url: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca"
  },
  {
    scientific_name: "Epipremnum aureum",
    common_name: "Golden Pothos",
    description: "Vining plant with heart-shaped, variegated leaves. Very easy to grow.",
    care_guide: "Low to bright indirect light. Water when soil is dry. Tolerates neglect.",
    photo_url: "https://images.unsplash.com/photo-1519125323398-675f0ddb6308"
  },
  {
    scientific_name: "Sansevieria trifasciata",
    common_name: "Snake Plant",
    description: "Upright, sword-like leaves. Extremely hardy and drought-tolerant.",
    care_guide: "Low to bright light. Let soil dry completely between waterings.",
    photo_url: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6"
  },
  {
    scientific_name: "Chlorophytum comosum",
    common_name: "Spider Plant",
    description: "Arching leaves with baby plantlets. Great air purifier.",
    care_guide: "Bright, indirect light. Water when soil is dry. Tolerates some neglect.",
    photo_url: "https://images.unsplash.com/photo-1464983953574-0892a716854b"
  },
  {
    scientific_name: "Dracaena marginata",
    common_name: "Dragon Tree",
    description: "Slender, upright plant with spiky leaves. Easy to care for.",
    care_guide: "Bright, indirect light. Water when top inch of soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1465101178521-c1a9136a3c8b"
  },
  {
    scientific_name: "Zamioculcas zamiifolia",
    common_name: "ZZ Plant",
    description: "Glossy, dark green leaves. Tolerates low light and infrequent watering.",
    care_guide: "Low to bright light. Water when soil is dry. Avoid overwatering.",
    photo_url: "https://images.unsplash.com/photo-1506784983877-45594efa4cbe"
  },
  {
    scientific_name: "Spathiphyllum wallisii",
    common_name: "Peace Lily",
    description: "Elegant white flowers and glossy leaves. Good air purifier.",
    care_guide: "Low to medium light. Keep soil moist but not soggy.",
    photo_url: "https://images.unsplash.com/photo-1464983953574-0892a716854b"
  },
  {
    scientific_name: "Aloe vera",
    common_name: "Aloe",
    description: "Succulent with medicinal gel in its leaves. Needs little care.",
    care_guide: "Bright, indirect light. Water deeply but infrequently.",
    photo_url: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6"
  },
  {
    scientific_name: "Cereus peruvianus",
    common_name: "Peruvian Apple Cactus",
    description: "Tall, columnar cactus. Produces edible fruit.",
    care_guide: "Full sun. Water sparingly. Well-draining soil.",
    photo_url: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca"
  },
  {
    scientific_name: "Haworthia fasciata",
    common_name: "Zebra Haworthia",
    description: "Small succulent with white stripes. Great for desks.",
    care_guide: "Bright, indirect light. Water when soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1519125323398-675f0ddb6308"
  },
  {
    scientific_name: "Pilea peperomioides",
    common_name: "Chinese Money Plant",
    description: "Round, coin-shaped leaves. Fast-growing and easy to propagate.",
    care_guide: "Bright, indirect light. Water when top inch of soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1506744038136-46273834b3fb"
  },
  {
    scientific_name: "Ficus elastica",
    common_name: "Rubber Plant",
    description: "Large, glossy leaves. Can grow into a small tree indoors.",
    care_guide: "Bright, indirect light. Water when soil is dry 1-2 inches down.",
    photo_url: "https://images.unsplash.com/photo-1465101178521-c1a9136a3c8b"
  },
  {
    scientific_name: "Calathea orbifolia",
    common_name: "Prayer Plant",
    description: "Striking foliage with silver stripes. Leaves move with light.",
    care_guide: "Medium to low light. Keep soil moist and humidity high.",
    photo_url: "https://images.unsplash.com/photo-1506784983877-45594efa4cbe"
  },
  {
    scientific_name: "Philodendron hederaceum",
    common_name: "Heartleaf Philodendron",
    description: "Trailing plant with heart-shaped leaves. Very forgiving.",
    care_guide: "Low to bright indirect light. Water when soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1519125323398-675f0ddb6308"
  },
  {
    scientific_name: "Crassula ovata",
    common_name: "Jade Plant",
    description: "Succulent with thick, shiny leaves. Symbol of good luck.",
    care_guide: "Bright light. Water when soil is dry. Avoid overwatering.",
    photo_url: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6"
  },
  {
    scientific_name: "Maranta leuconeura",
    common_name: "Red Prayer Plant",
    description: "Colorful leaves with red veins. Folds up at night.",
    care_guide: "Medium light. Keep soil moist and humidity high.",
    photo_url: "https://images.unsplash.com/photo-1464983953574-0892a716854b"
  },
  {
    scientific_name: "Begonia maculata",
    common_name: "Polka Dot Begonia",
    description: "Striking leaves with white spots and red undersides.",
    care_guide: "Bright, indirect light. Water when top inch of soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca"
  },
  {
    scientific_name: "Peperomia obtusifolia",
    common_name: "Baby Rubber Plant",
    description: "Compact plant with thick, glossy leaves. Easy to care for.",
    care_guide: "Medium to bright light. Water when soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1506744038136-46273834b3fb"
  },
  {
    scientific_name: "Tradescantia zebrina",
    common_name: "Wandering Jew",
    description: "Trailing plant with purple and silver striped leaves.",
    care_guide: "Bright, indirect light. Water when soil is dry.",
    photo_url: "https://images.unsplash.com/photo-1465101178521-c1a9136a3c8b"
  }
]

plant_species_data.each do |attrs|
  PlantSpecies.find_or_create_by!(scientific_name: attrs[:scientific_name]) do |ps|
    ps.common_name = attrs[:common_name]
    ps.description = attrs[:description]
    ps.care_guide = attrs[:care_guide]
    ps.photo_url = attrs[:photo_url]
  end
end

puts "Seeded #{PlantSpecies.count} plant species!"
