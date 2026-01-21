# Flutter Interactive Onboarding UI 📱

This repository contains a dedicated, reusable Onboarding (Walkthrough) interface built with Flutter. It focuses on providing a smooth first-time user experience with intuitive navigation.

## ✨ Features

* **3-Step Guided Tour**: A clean, multi-page layout that introduces the app's value to new users.
* **Smart Navigation Logic**:
    * **Step 1 & 2**: Features 'Skip' (to jump to the end) and 'Next' (to proceed).
    * **Step 3**: The 'Next' button dynamically transforms into a **'Finish'** button to conclude the tour.
* **Page Indicators**: Interactive dot indicators that visualize the user's progress through the slides.
* **Modern Aesthetic**: Minimalist design with centered illustrations and clear typography.
* **Smooth Transitions**: Utilizes Flutter's `PageView` for fluid sliding animations between steps.

## 📸 Interface Preview

| Step 1 (Introduction) | Step 2 (Features) | Step 3 (Finalize) |
| :---: | :---: | :---: |
|<img width="443" height="775" alt="Screenshot 2026-01-21 213910" src="https://github.com/user-attachments/assets/fd02878c-e69e-4a90-a915-4635ab7c3326" />|<img width="394" height="755" alt="Screenshot 2026-01-21 213919" src="https://github.com/user-attachments/assets/dff44c14-f00f-4aff-b92d-cf42997a096f" />|<img width="415" height="761" alt="Screenshot 2026-01-21 213924" src="https://github.com/user-attachments/assets/8c3100aa-6059-4e6d-9e6e-b15974b857be" /> |

## 🛠️ Technical Implementation

* **Stateful Navigation**: The UI tracks the current page index to toggle between 'Next' and 'Finish' buttons.
* **PageView Controller**: Manages the horizontal scroll and button-triggered transitions.
* **Modular Design**: The onboarding screens are designed to be easily customizable with different assets and text.

## 🚀 How it works
1. User swipes or taps 'Next' to move through screens.
2. 'Skip' allows bypassing the tutorial at any point.
3. Upon reaching the final screen, the 'Finish' action is triggered.
