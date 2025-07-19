class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE5B4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(12)),
              child: const Icon(Icons.favorite, color: Colors.white),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            'https://img.freepik.com/free-photo/peace-lily-plant-pot-home-decor_53876-150706.jpg',
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Peace Lily",
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text("Type", style: TextStyle(color: Colors.grey)),
                Text("Small",
                    style:
                        TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Category", style: TextStyle(color: Colors.grey)),
                Text("Indoor Plant",
                    style:
                        TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Price", style: TextStyle(color: Colors.grey)),
                Text("\$40.00",
                    style:
                        TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 10),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              StatBox(label: "Light", value: "37%", color: Colors.pinkAccent),
              StatBox(label: "Water", value: "2L", color: Colors.lightBlue),
              StatBox(label: "Temp", value: "25℃", color: Colors.amber),
            ],
          ),
          const SizedBox(height: 20),

        
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "About Peace Lily\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "The peace lily plant is well known for its air purifying abilities as house plant; it's great at breaking down and neutralizing toxic gases like carbon...",
                    ),
                    TextSpan(
                        text: "Read More",
                        style: TextStyle(color: Colors.green))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatBox extends StatelessWidget {
  final String label, value;
  final Color color;

  const StatBox(
      {super.key,
      required this.label,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 90,
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
