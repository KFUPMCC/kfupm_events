# Events App

Welcome to the Events App! This Flutter-based application, integrated with Firebase, allows users to create and manage events. With a user-friendly interface and powerful functionality, this app simplifies event management for organizers while providing a seamless experience for registrants.

## Features

1. **Welcome Page**: The app starts with a welcome page where users can choose to enter in either dark or light mode, providing a personalized experience from the beginning.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/1dcdd542-70db-4572-9d6b-cefc05acdb42" width="250">


2. **Home Page**: The home page displays recent events, today events and recommended events. Users can filter events based on event type, making it easier to find relevant events.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/15920a99-1c9d-46ed-ade1-b32b0271d769" width="250">  <img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/692cefd5-1c49-42e1-bb75-5c350a99ba34" width="250">

3. **Create New Event**: Organizers can log in with their account. Once logged in, organizers are directed to a fully customized event creation form. After creating an event, it is stored in Firebase and immediately shown on the homepage.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/f92a309e-af36-4309-ab0a-5f1f8f84ee58" width="250">  <img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/b4e3fa6b-18d2-4ee4-9741-515c004c5e74" width="250">

4. **Event Page**: The event page displays full details of an event, including the event location. Users can click on a location button that navigates them to Google Maps with directions to the event venue.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/b767e65c-d335-49e9-9a02-2b53adba7d1f" width="250">

5. **Registrant Registration**: Registrants can click on the "Register" button if there are available seats for an event. They will be directed to a registrant form page to provide their necessary information.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/82e7111c-ecac-4c95-a98c-1c7573980adc" width="250">

6. **Settings Page**: The app includes a settings page where users can enable or disable the dark mode feature, enhancing their visual experience.

<img src="https://github.com/KFUPMCC/kfupm_events/assets/65549274/9e54a64b-69a1-4e4c-8733-180ec02a03eb" width="250">

## Getting Started

To get started with the Events App, follow these steps:

1. Clone the repository to your local machine.   " git clone https://github.com/your-username/events-app.git " 
2. Open the project in your preferred Flutter development environment.
3. Set up Firebase for your project by creating a new Firebase project and obtaining the necessary configuration files (google-services.json for Android and GoogleService-Info.plist for iOS). Place these files in the appropriate directories as instructed by the Firebase documentation.
4. Update the Firebase configuration in the app by replacing the placeholder values in the lib/firebase/firebase_config.dart file with your own Firebase configuration.
5. Build and run the app on your preferred device or emulator.

## Resources
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
