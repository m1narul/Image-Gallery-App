Flutter Image Gallery App
A Flutter application that displays a gallery of images fetched from the Pixabay API. The app shows
images in a grid format and includes infinite scrolling, loading new images as the user scrolls
down. Each image displays the number of likes and views.

Features
Responsive image grid, with the number of columns adjusted based on screen width.
Fetches images from the Pixabay API.
Displays image likes and views.
Infinite scrolling: new images are loaded automatically when scrolling down.
Built with Flutter, uses GetX for state management and infinite_scroll_pagination for lazy loading.
Requirements
Flutter 3.0 or above
A valid Pixabay API key (obtain one here)
Getting Started

1. Clone the repository
   bash
   Copy code
   git clone https://github.com/your-username/flutter-image-gallery.git
   cd flutter-image-gallery
2. Install dependencies
   bash
   Copy code
   flutter pub get
3. Set up Pixabay API key
   In lib/services/pixabay_service.dart, replace 'YOUR_PIXABAY_API_KEY' with your actual API key
   from Pixabay:

dart
Copy code
final String apiKey = 'YOUR_PIXABAY_API_KEY';

4. Run the app
   bash
   Copy code
   flutter run
   Dependencies
   The app uses the following Dart packages:

get: State management and dependency injection.
graphql_flutter and artemis: For GraphQL communication (not actively used in this demo).
firebase_messaging: For push notifications (not actively used in this demo).
http: For HTTP requests to the Pixabay API.
infinite_scroll_pagination: For handling infinite scrolling of paginated data.
Screenshots
Add screenshots of the app running on various devices here.

License
This project is licensed under the MIT License. See the LICENSE file for details.# Image-Gallery-App
