# **Captive Portal Project Documentation**

## **Overview**
The Captive Portal project enables users to access ADM Wi-Fi after filling out a registration form. The portal is divided into two main stages:

- **Splash Screen**: Displays a welcome message while the portal is loading.
- **Registration Form**: Allows users to input their details to gain internet access.

This documentation will guide you on the structure, tasks, and procedures for working on both the frontend and backend of the Captive Portal.

---

## **Frontend Code Access**

### **Location of Frontend Files**
The frontend files can be accessed in the following directory:


## **Captive-Portal\public\index.html**


This is the main HTML file for the Captive Portal and includes the following sections:

- **Splash Screen**: Displayed for 10 seconds before transitioning to the registration form.
- **Registration Form**: Form to collect personal information from users.
- **Navigation and UI Elements**: Form input fields and a submit button, styled with CSS.

---

### **Modifications to the Frontend**

- **Splash Screen**:
  - Displays initially when the user accesses the portal.
  - Hides after 10 seconds and smoothly transitions to the home page.

- **Registration Form**:
  - Fields include **Full Name**, **Cell Number**, **Email Address**, **Age**, **Gender**, and **Employment Status**.
  - Ensures that all required fields are filled before submission.

- **CSS Styling**:
  - Styles are linked via `styles.css`.
  - Any UI/UX changes (colors, fonts, layout) can be made here.

- **Font Awesome Icons**:
  - Icons are used next to input fields to enhance the user interface.

---

### **File Structure**
- The frontend files are located in the **public** folder.
- The main entry file is `index.html`.
- All static assets (images, CSS, JavaScript) are stored in the **public** directory.

---

## **Backend Development Guide**

### **Backend Flow Overview**
The backend will handle the user data submitted via the registration form, validate it, and store it in the database. Below is an overview of the backend development steps:

---

### **Steps for Backend Development**

1. **Form Submission**:
   - The data from the form must be sent to the server via `POST` method.
   - Ensure that all required fields (**Full Name**, **Cell Number**) are provided. If any fields are missing, return an error response.

2. **Database Storage**:
   - Store the submitted data in the database (e.g., **MySQL** or another database).
   - Ensure that fields like **Full Name**, **Cell Number**, **Email Address**, **Age**, **Gender**, and **Employment Status** are correctly stored.
   - Implement validation on the backend to ensure data is in the expected format.

3. **Form Validation**:
   - **Required Fields**: Make sure that all mandatory fields are filled out.
   - **Data Types**: Ensure the **Age** field is a valid number and **Email** is in the correct format.

4. **Redirect to Success Page**:
   - Once the form is successfully submitted, redirect the user to a **success page** (e.g., `success.html`).

---

## **Detailed Tasks for Backend Team**

### **API Development**
- **Create a POST Endpoint for Form Submission**:
  - **Endpoint**: `/api/submit-form`
  - **Method**: `POST`
  - **Input Data**: Full Name, Cell Number, Email, Age, Gender, Employment Status
  - **Response**: Success or Error message

- **Data Validation**:
  - Validate that all fields are filled.
  - Ensure the **Email** is valid and **Age** is a number.

- **Store User Data**:
  - After successful validation, store the user data in the database.

- **Success Response**:
  - Once the data is successfully saved, send a success response to the frontend and redirect the user to the `success.html` page.

---

## **Conclusion**
This document provides the necessary guidelines to the team to  proceed with the development of both the frontend and backend for the Captive Portal. Please follow the instructions carefully, and keep the Git repository updated with your progress. If you have any questions, feel free to reach out!

---

### **Additional Resources**
- **Frontend**: [Captive-Portal/public/index.html](Captive-Portal/public/index.html)
- **Backend API Documentation**: _To be added upon implementation_
