# Airport Distance API - Dart/Flutter Client

Airport Distance is a simple tool for getting the distance between two airports. It returns the distance between the two airports.

[![pub package](https://img.shields.io/pub/v/apiverve_airportdistance.svg)](https://pub.dev/packages/apiverve_airportdistance)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airport Distance API](https://airportdistance.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airportdistance: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_airportdistance/apiverve_airportdistance.dart';

void main() async {
  final client = AirportdistanceClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'iata1': 'JFK',
      'iata2': 'LAX'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "distanceMiles": 2470.23,
    "distanceKm": 3974.2,
    "airport1": {
      "name": "John F Kennedy International Airport",
      "iata": "JFK",
      "icao": "KJFK",
      "city": "New York",
      "state": "New-York",
      "country": "US",
      "elevation": 13,
      "latitude": 40.63980103,
      "longitude": -73.77890015
    },
    "airport2": {
      "name": "Los Angeles International Airport",
      "iata": "LAX",
      "icao": "KLAX",
      "city": "Los Angeles",
      "state": "California",
      "country": "US",
      "elevation": 125,
      "latitude": 33.94250107,
      "longitude": -118.4079971
    }
  }
}
```

## API Reference

- **API Home:** [Airport Distance API](https://airportdistance.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/airportdistance](https://docs.apiverve.com/ref/airportdistance?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
