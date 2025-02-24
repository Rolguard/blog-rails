# Blogger
<img src="https://github.com/user-attachments/assets/399416eb-0c5c-4894-947d-14c916d7264e" width="120">

**Blogger** is a feature-rich content management system (CMS) platform where users can create, read, update, and delete (CRUD) articles and interact with content through comments. The application offers a seamless and user-friendly experience, making it easy to explore, manage, and engage with articles and users.

## Key Features

- **Article Management**: 
  - Users can create, edit, delete, and view articles.
  - Articles support **image uploads** to enhance visual engagement.
  - Articles support **rich text format** (RTF) including bolding, lists and embedded hyperlinks.
  - Articles have a publication status enabling users to choose who can view their articles.
  - Each article can have associated tags, enabling filtering by categories such as "science" or "cooking."
  <br>
  <img width="868" alt="image" src="https://github.com/user-attachments/assets/8b2aa116-fc5b-4e1f-b69a-b038f735c6e5" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/ce2985de-bd8c-4356-b528-55c34b72e0b6" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/f0859bc3-e480-4470-889e-1de2c849de8f" />
  <br>
- **Article Statistics**
  - **Impression Count** (eye icon): Tracks the number of times an article has been loaded and displayed to users.
  - **Read Count** (book icon): Tracks the number of times a user has clicked on the article link and read the article.

- **Comments**: 
  - Users can add comments to articles to share their thoughts and engage with content. 
  - Each user can edit or delete only their own comments.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/0134a3e1-1f78-41fa-91e4-1ec3bf79466e" />
  
- **Account Management & Authentication**
  - Users can seamlessly create an account, log in and out and request password reset instructions for account recovery.
  - Account form validation to ensure users sign up with an unique email and abide by basic password security practices.
  <br>
  <img width="407" alt="image" src="https://github.com/user-attachments/assets/46e7b987-c328-4284-ad89-74fd06436714" />
  <img width="398" alt="image" src="https://github.com/user-attachments/assets/247e9309-15e0-495f-abe5-0388b2046d7a" />
  <img width="455" alt="image" src="https://github.com/user-attachments/assets/b3a1633b-dad4-4369-9088-7ac810a31686" />
  <img width="460" alt="image" src="https://github.com/user-attachments/assets/c7f64a6c-e4e9-42b6-9fb1-e2f347ac8f9a" />


- **User Profiles**: 
  - Users can view other user profiles to see their published articles and comment history.

    > Note: Only the user associated with a profile or an admin can see their private / archived articles or whether their articles are pending / denied.
  - Users can edit their own profile to change how their details are displayed to other users.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/7e0da62c-fdc2-4c99-b9ab-5d6b9404fd0c" />



- **Full-Text Search**: 
  - A powerful search bar functionality allows users to find articles and users of interest efficiently.
  <br>
   <img width="600" alt="image" src="https://github.com/user-attachments/assets/1f05f692-e66d-4d18-b80d-3f48e1fb2a37" />
   <img width="600" alt="image" src="https://github.com/user-attachments/assets/d4e02d23-8e53-4e3c-90f8-db7288511270" />


- **Tags for Filtering**: 
  - Articles can be tagged, and users can browse articles by specific tags to focus on topics of interest.
  <br>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/3ed62dea-e8ce-422e-a93c-5e5e7eecdc8a" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/81176dd8-22dc-4c65-b417-b6bfaef1c1fb" />

- **SEO-Friendly URLs**:
  - Articles use FriendlyId to generate human-readable slugs based on the article title for URLs e.g. http://127.0.0.1:3000/articles/crispr-genome-editing-grows-up-advanced-therapies-head-for-the-clinic

- **Role-Based Access Control (RBAC)**:
  - **Users**: Can manage only the articles and comments they have created. When a user creates a new article or makes any changes to their existing article, the article must be examined and approved by an admin before being published. Users can only view articles that are public and accepted by an admin.
  - **Admins**: Have enhanced privileges, with access to admin portal to monitor user traffic, new user sign ups and article activity. Access to article approval page for content moderation and users page for user management. Can edit or delete any article or comment that fails to abide by community or user guidelines.
  <h4>Admin Portal</h4>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/ad0e6550-6944-4501-b2a5-d3c492fc0e2c" />

  <h4>Content Moderation</h4>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/d2142aa8-ab4a-4cd9-95da-4a50f359e865" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/20a7fc65-dd60-422f-8d86-bd94b5811db8" />

  <h4>User Management</h4>
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/c9a661f3-6352-4986-8427-c9fb2febdb04" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/0399a97d-8b77-4413-8786-667d5f0313e9" />
  <img width="600" alt="image" src="https://github.com/user-attachments/assets/464ca114-07d9-44f4-a47b-e0f5c3009877" />


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
- **FriendlyId** - Generates SEO-friendly slugs for articles URLs
- **Grape + Grape Entity** -  Build REST-like API for articles, users and tags
- **RSpec** - Testing framework to develop request tests for API
- **FactoryBot** - Factory methods to create test fixtures e.g. users
- **Faker** - Generates realistic dummy data e.g. emails, full names, example paragraphs
