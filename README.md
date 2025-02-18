# FinTrack - Personal Finance Tracker

## 📌 Overview
**FinTrack** is a finance tracking application built using **Flutter** and **Firebase**. It allows users to monitor their income and expenses, track transactions, manage budgets, and visualize financial data effectively.

## 🚀 Features
- 📲 **User Authentication**: Sign up and log in with Firebase authentication.
- 🔢 **4-Digit PIN Security**: Extra layer of security before login.
- 📊 **Dashboard**: Overview of balance, latest transactions, and financial insights.
- 📜 **Transaction History**: Filter transactions by date and category.
- 🏦 **Budget Management**: Set and track spending across various categories.
- 💳 **Card Details Page**: Displays card details in an interactive UI.
- 🔔 **Notifications**: Get reminders, updates, and alerts.
- ⚙️ **Settings Page**: Update profile, security settings, and preferences.
- 📅 **Budget Activity Page**: View weekly spending trends with graphs.

## 🛠️ Tech Stack
- **Frontend**: Flutter (Dart)
- **Backend**: Firebase (Authentication, Firestore Database, Cloud Storage)
- **State Management**: Provider / Riverpod (optional)
- **Database**: Firestore
- **Animations**: Flutter Animations for UI enhancements

## 📂 Project Structure
```
lib/
|-- main.dart (Entry Point)
|-- screens/
|   |-- welcome_page.dart
|   |-- login_page.dart
|   |-- signup_page.dart
|   |-- home_page.dart
|   |-- transactions_page.dart
|   |-- settings_page.dart
|   |-- budget_activity_page.dart
|   |-- notifications_page.dart
|   |-- card_details_page.dart
|
|-- models/
|   |-- user.dart
|   |-- transaction.dart
|
|-- services/
|   |-- auth_service.dart
|   |-- database_service.dart
|
|-- widgets/
|   |-- custom_button.dart
|   |-- transaction_item.dart
```

## ⚡ Installation & Setup
1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/fintrack.git
   cd fintrack
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Set up Firebase:**
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
   - Enable Authentication (Email/Password)
   - Set up Firestore Database and Cloud Storage
   - Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) into the respective directories.
4. **Run the app:**
   ```bash
   flutter run
   ```

## 📸 Screenshots
(Attach screenshots of different screens here)

## 🏗️ Future Enhancements
- ✅ Expense analysis with AI-powered suggestions
- 📍 Location-based expense tracking
- 📈 Advanced financial insights and reports
- 🌎 Multi-currency support

## 🤝 Contribution
Feel free to contribute! Open issues and submit pull requests to enhance FinTrack.

## 📜 License
This project is licensed under the MIT License.

## 📞 Contact
For any queries, reach out at:
📧 Email: yourname@example.com  
🐦 Twitter: [@yourhandle](https://twitter.com/yourhandle)

