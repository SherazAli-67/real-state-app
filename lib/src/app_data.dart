import 'models/property_model.dart';

class AppData {
  static List<PropertyModel> properties = [
    PropertyModel(
        location: "Dubai, UAE",
        locationTitle: "Luxury Apartment in Downtown",
        description: "Experience high-end living in this luxurious apartment located in the heart of Dubai. "
            "With breathtaking views of the city skyline, this residence offers world-class amenities. "
            "Perfect for those who value comfort, security, and an upscale lifestyle.",
        price: 250000.0,
        images: [
          "https://images.unsplash.com/photo-1723642503179-cd9e98913229?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1722502831677-74729ac2eb78?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1722502831572-2d12e8f30c59?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1721977568971-f07e1aa58cf9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDI5fHx8ZW58MHx8fHx8"
        ],
        services: ["Gym", "Swimming Pool", "24/7 Security", "Parking"]
    ),
    PropertyModel(
        location: "New York, USA",
        locationTitle: "Penthouse in Manhattan",
        description: "A breathtaking penthouse situated in the vibrant city of New York. "
            "Enjoy panoramic views of the Manhattan skyline from your private terrace. "
            "Designed with modern interiors, this home provides the ultimate urban living experience.",
        price: 500000.0,
        images: [
          "https://images.unsplash.com/photo-1528916282053-c83897a7063c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8TmV3JTIwWW9yayUyMGJ1aWxkaW5nc3xlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1483658026612-2ea7827cfc81?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fE5ldyUyMFlvcmslMjBidWlsZGluZ3N8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1459597093177-5c47509d2d61?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fE5ldyUyMFlvcmslMjBidWlsZGluZ3N8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1644853347773-6274a23ef868?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8TmV3JTIwWW9yayUyMEluZG9vciUyMEhvdXNlfGVufDB8fDB8fHww",
          "https://images.unsplash.com/photo-1556394890-c874aac332b1?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fE5ldyUyMFlvcmslMjBJbmRvb3IlMjBIb3VzZXxlbnwwfHwwfHx8MA%3D%3D"
        ],
        services: ["Concierge", "Gym", "Private Elevator", "Rooftop Access"]
    ),
    PropertyModel(
        location: "London, UK",
        locationTitle: "Classic Townhouse",
        description: "This classic London townhouse blends historic charm with modern luxury. "
            "Located in a prestigious neighborhood, it features high ceilings, elegant finishes, and a private garden. "
            "Ideal for families looking for a spacious and comfortable home in the city.",
        price: 350000.0,
        images: [
          "https://images.unsplash.com/photo-1566515610329-94f02c3707d6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8TG9uZG9uJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
          "https://plus.unsplash.com/premium_photo-1682125921736-04133d6a5b39?q=80&w=3146&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1661923086373-73176f7c004a?q=80&w=3125&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1661963245472-832ed5ff2463?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
        ],
        services: ["Garden", "Fireplace", "Parking", "Smart Home System"]
    ),
    PropertyModel(
        location: "Istanbul, Turkey",
        locationTitle: "Sea View Apartment",
        description: "Wake up to stunning views of the Bosphorus in this elegant sea-facing apartment. "
            "With floor-to-ceiling windows, natural light floods the spacious interiors. "
            "Located in a prime area, this residence provides easy access to top restaurants and cultural sites.",
        price: 180000.0,
        images: [
          "https://images.unsplash.com/photo-1527838832700-5059252407fa?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SXN0YW5idWwlMkMlMjBUdXJrZXl8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1595769858256-708d56ecd750?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fElzdGFuYnVsJTIwQmFsY29ueXxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1670143773636-b392483d9021?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8T3R0b21hbiUyMGJhdGh8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1697160758473-a0b4e8086bfe?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8T3R0b21hbiUyMFNlY3VyaXR5fGVufDB8fDB8fHww",
          "https://images.unsplash.com/photo-1728486888025-34e8d66b6b7b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fFR1cmtpc2glMjBTd2ltbWluZyUyMFBvb2x8ZW58MHx8MHx8fDA%3D"
        ],
        services: ["Balcony", "Turkish Bath", "Security", "Swimming Pool"]
    ),
    PropertyModel(
        location: "Paris, France",
        locationTitle: "Elegant Apartment Near Eiffel Tower",
        description: "A stylish and sophisticated apartment just minutes away from the iconic Eiffel Tower. "
            "Featuring classic French architecture, high ceilings, and modern touches, this home is a true gem. "
            "Enjoy a luxurious Parisian lifestyle in one of the most sought-after locations in the city",
        price: 400000.0,
        images: [
          "https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UGFyaXN8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1512725945065-57cfb2e8c93f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fFBhcmlpcyUyMEhvdXNpbmd8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1629279518030-d7130a150471?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFyaXMlMjBIaWdoJTIwQ2VpbGluZ3N8ZW58MHx8MHx8fDA%3D",
          "https://plus.unsplash.com/premium_photo-1661878010419-0f4c0114d87a?q=80&w=3125&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ""
        ],
        services: ["Balcony", "High Ceilings", "Luxury Finishes", "Underground Parking"]
    ),
    PropertyModel(
        location: "Sydney, Australia",
        locationTitle: "Beachfront Villa",
        description: "Escape to paradise with this stunning beachfront villa in Sydney. "
            "Enjoy direct access to the beach, a private swimming pool, and breathtaking ocean views. "
            "Perfect for those who love a coastal lifestyle with all the modern conveniences",
        price: 600000.0,
        images: [
          "https://images.unsplash.com/photo-1551352912-484163ad5be9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fFN5ZG5leSUyQyUyMEF1c3RyYWxpYXxlbnwwfHwwfHx8MA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1693493439417-d332e618e640?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1700140420241-9e21b75cb0ce?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1676991000660-f89b6b113b7c?q=80&w=3136&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
        ],
        services: ["Private Pool", "Ocean View", "Garage", "Smart Home Features"]
    ),
    PropertyModel(
        location: "Berlin, Germany",
        locationTitle: "Modern Loft in City Center",
        description: "A contemporary and stylish loft apartment located in the heart of Berlin. "
            "Designed with open-concept living spaces, high ceilings, and large windows, it offers a bright and airy feel. "
            "Ideal for professionals seeking a modern and dynamic living environment.",
        price: 220000.0,
        images: [
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_00_0000.jpeg",
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_01_0000.jpeg",
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_02_0000.jpeg",
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_04_0000.jpeg",
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_05_0000.jpeg",
          "https://media.rightmove.co.uk/206k/205424/156857126/205424_205424_154029FCB25_IMG_06_0000.jpeg"
        ],
        services: ["Open Kitchen", "Gym", "Coworking Space", "Bicycle Storage"]
    ),
    PropertyModel(
        location: "Tokyo, Japan",
        locationTitle: "Minimalist Studio",
        description: "This beautifully designed minimalist studio is located in the bustling district of Shibuya. "
            "Perfect for those who appreciate efficiency and modern aesthetics, with smart home technology included. "
            "Live in the heart of Tokyo with easy access to shops, restaurants, and entertainment hubs.",
        price: 150000.0,
        images: ["https://images.unsplash.com/photo-1644150448775-14dfa6b8a7c4?q=80&w=3163&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://plus.unsplash.com/premium_photo-1664302454100-aa1f07d499d1?q=80&w=3169&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://plus.unsplash.com/premium_photo-1722593856044-e5176ca19a5f?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://images.unsplash.com/photo-1625668751669-65ceebd81e34?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
        services: ["Smart Home", "Furnished", "Balcony", "24/7 Security"]
    ),
    PropertyModel(
        location: "Rome, Italy",
        locationTitle: "Historic Villa",
        description: "Step into history with this stunning Italian villa, offering timeless elegance and luxury. "
            "Surrounded by lush gardens, this residence features marble floors, classic Italian architecture, and a private wine cellar. "
            "A perfect retreat for those who appreciate culture, art, and sophistication.",
        price: 500000.0,
        images: [
          "https://plus.unsplash.com/premium_photo-1661963265512-73e8d1053b9a?q=80&w=3255&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1678111481806-4a0b32104c63?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1621876776298-a7afeb37c4a3?q=80&w=3165&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1729890161985-ebb81978908d?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1664214917702-19fa08c1acf7?q=80&w=3215&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",

        ],
        services: ["Private Garden", "Wine Cellar", "Parking", "Marble Floors"]
    ),
    PropertyModel(
        location: "Toronto, Canada",
        locationTitle: "Lakefront Condo",
        description: "Enjoy breathtaking lake views from this modern and stylish condo in Toronto. "
            "Located in a premium waterfront district, this residence offers an open-concept design with top-tier finishes. "
            "A perfect choice for professionals or couples looking for a vibrant and scenic living space.",
        price: 300000.0,
        images: [
          "https://images.unsplash.com/photo-1708619273295-d5213d8bf860?q=80&w=3103&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708619273217-c25f7b9f804e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1571594016033-9d3302d4e779?q=80&w=3275&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1672280783570-59f6320798fc?q=80&w=3136&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        services: ["Indoor Pool", "Gym", "Lounge Area", "Underground Parking"]
    ),
  ];

  static List<String> get categories  {
    return [
      'Popular', 'Near You', 'Home', "Apartment", 'Office', "Land"
    ];
  }
}