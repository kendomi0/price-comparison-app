# Grocery Store App
An app for comparing prices of grocery store food items.

## Live Demo
View the app here: [Grocery Store App on Render](https://grocery-store-app-wegj.onrender.com/)

## Technologies Used
- Express
- Render
- Node.js
- MySQL (Hosted on Avien)
- HTML
- CSS
- JavaScript

## Overview
This application allows users to compare grocery item prices between stores and brands.  
Each item includes details such as brand, size, and whether it’s organic or store-brand.  
The app calculates unit prices for more accurate comparisons.

## Database
The project uses a MySQL database hosted on Aiven.  
The `sql/` directory contains scripts for creating the `items` table and inserting sample data.

## Setup Instructions
```bash
# Clone repository
git clone https://github.com/kendomi0/grocery-store-app/
cd grocery-store-app

# Install dependencies
npm install

# Set up .env with database credentials
DB_HOST=<your-host>
DB_USER=<your-user>
DB_PASSWORD=<your-password>
DB_NAME=defaultdb

# Run server
npm start
```