#!/bin/bash

# Set base directory
BASE_DIR="/c/Users/user/Desktop/captive-portal"

# Define project structure
DIRS=(
    "$BASE_DIR/public"
    "$BASE_DIR/server"
    "$BASE_DIR/assets/css"
    "$BASE_DIR/assets/js"
    "$BASE_DIR/assets/images"
)

FILES=(
    "$BASE_DIR/public/index.html"
    "$BASE_DIR/public/success.html"
    "$BASE_DIR/public/styles.css"
    "$BASE_DIR/public/script.js"
    "$BASE_DIR/server/database.php"
    "$BASE_DIR/server/save_user.php"
    "$BASE_DIR/assets/css/styles.css"
    "$BASE_DIR/assets/js/script.js"
    "$BASE_DIR/assets/images/logo.png"
    "$BASE_DIR/assets/images/background.jpg"
    "$BASE_DIR/.htaccess"
    "$BASE_DIR/README.md"
)

# Create directories
echo "Creating directories..."
for dir in "${DIRS[@]}"; do
    mkdir -p "$dir"
    echo "Created: $dir"
done

# Create empty files
echo "Creating files..."
for file in "${FILES[@]}"; do
    touch "$file"
    echo "Created: $file"
done

# Write sample content to important files
echo "Writing sample content..."

cat <<EOL > "$BASE_DIR/public/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Captive Portal</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Welcome to ADM Wi-Fi</h1>
    <form>
        <input type="text" placeholder="Full Name">
        <input type="tel" placeholder="Cell Number">
        <button type="submit">Submit</button>
    </form>
</body>
</html>
EOL

cat <<EOL > "$BASE_DIR/public/styles.css"
body {
    background: #000;
    color: #fff;
    font-family: Arial, sans-serif;
}
EOL

cat <<EOL > "$BASE_DIR/server/database.php"
<?php
\$conn = new mysqli("localhost", "root", "", "captive_portal");
if (\$conn->connect_error) {
    die("Connection failed: " . \$conn->connect_error);
}
?>
EOL

cat <<EOL > "$BASE_DIR/README.md"
# Captive Portal
This project captures user information before granting internet access.
EOL

echo "Setup complete! 🚀"
