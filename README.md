# Blogger
<img src="https://github.com/user-attachments/assets/399416eb-0c5c-4894-947d-14c916d7264e" width="120">

**Blogger** is a feature-rich content management system (CMS) platform where users can create, read, update, and delete (CRUD) articles and interact with content through comments. The application offers a seamless and user-friendly experience, making it easy to explore, manage, and engage with articles and users.

## Key Features

- **Article Management**: 
  - Users can create, edit, delete, and view articles.
  - Articles support **image uploads** to enhance visual engagement.
  - Articles support **rich text format** (RTF) including bolding, lists and embedded hyperlinks.
  - Each article can have associated tags, enabling filtering by categories such as "science" or "cooking."
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/5968ea9c-a00c-48a0-9d1f-e04b311940ba" />

  <img width="600" alt="image" src="https://github.com/user-attachments/assets/dd52f7fc-4e86-4046-98e7-02a16239a7aa" />
  
- **Comments**: 
  - Users can add comments to articles to share their thoughts and engage with content. 
  - Each user can edit or delete only their own comments.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/d5c23ef3-3cf0-4ab9-b947-63b465d9c299" />

  
- **User Profiles**: 
  - Users can view other profiles to see their published articles and comment history.
  - Users can edit their profile to change how their details are displayed to other users.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/3f435b8a-c5e8-490d-933b-3c08853e78b8" />



- **Full-Text Search**: 
  - A powerful search bar functionality allows users to find articles of interest efficiently.
  <br>
  <img width="793" alt="image" src="https://github.com/user-attachments/assets/2a479d5d-ec8f-4567-976f-39ede3526ff0" />

- **Tags for Filtering**: 
  - Articles can be tagged, and users can browse articles by specific tags to focus on topics of interest.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/e027216c-69dd-4a25-8699-1781baaf1876" />


- **Role-Based Access Control (RBAC)**:
  - **Regular Users**: Can manage only the articles and comments they have created.
  - **Admins**: Have enhanced privileges, with access to article approval page for moderation and user index page for user management. Can edit or delete any article or comment.

  <h4>Moderation</h4>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/209d9d9e-6523-4425-b46f-ed632ef3aa78" />
  
  <h4>User Management</h4>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/67545db1-1eaf-408c-9e12-8f3195ad9629" />
  

## Technology Stack
- **Ruby on Rails** - Full-stack development (frontend + backend)
- **PostgreSQL** - Database management system (DBMS)

## Additional Libraries / Utilities
- **Bootstrap 5.3** - User interface (UI) components
- **simple_form** - Ruby on Rails Form Library
- **Devise** - User authentication and account management
- **pg_search** - Full-text search functionality
- **CarrierWave** - Image uploads
- **Slim** - Indentation-based syntax for views to replace default embedded ruby (.html.erb) template language
- **ActionText** - Display rich text content
