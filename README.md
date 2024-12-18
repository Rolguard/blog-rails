# Blogger
<img src="https://github.com/user-attachments/assets/399416eb-0c5c-4894-947d-14c916d7264e" width="120">

**Blogger** is a feature-rich content management system (CMS) platform where users can create, read, update, and delete (CRUD) articles and interact with content through comments. The application offers a seamless and user-friendly experience, making it easy to explore, manage, and engage with articles and users.

## Key Features

- **Article Management**: 
  - Users can create, edit, delete, and view articles.
  - Articles support **image uploads** to enhance visual engagement.
  - Each article can have associated tags, enabling filtering by categories such as "science" or "cooking."
  
- **Comments**: 
  - Users can add comments to articles to share their thoughts and engage with content.
  - Each user can edit or delete only their own comments.
  
- **User Profiles**: 
  - Users can view other profiles to see their published articles and comment history.
  - Users can edit their profile to change how their details are displayed to other users.

- **Full-Text Search**: 
  - A powerful search bar functionality allows users to find articles of interest efficiently.

- **Tags for Filtering**: 
  - Articles can be tagged, and users can browse articles by specific tags to focus on topics of interest.

- **Role-Based Access Control (RBAC)**:
  - **Regular Users**: Can manage only the articles and comments they have created.
  - **Admins**: Have enhanced privileges, such as approving articles and editing or deleting any article or comment.

## Technology Stack
- Full-stack (frontend + backend) - Ruby on Rails
- Database - PostgreSQL

## Additional Libraries / Utilities
- Bootstrap 5.3 - UI components
- simple_form - Ruby on Rails Form Library
- Devise - User authentication and account management
- pg_search - Full-text search functionality
- CarrierWave - Image uploads
