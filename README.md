# YouTube Notes Generator

Generate detailed high quality and comprehensive notes from YouTube videos using Gemini-1.5-Pro or Gemini-1.5-Flash.

## 🚀 Features

- Generates comprehensive notes from YouTube videos
- Uses audio understanding instead of transcripts for better context
- Powered by state-of-the-art LLMs: gemini-1.5-pro or gemini-1.5-flash
- User-friendly interface built with Streamlit
- Two specialized system prompts:
   - TUTORIAL_ONLY: Allows to notes for tutorial based YouTube videos
   - CLASS_LECTURE: Allows to notes for academic lecture YouTube contents

## 🖼️ Screenshot

![Application Screenshot](screenshots/sample.png)

## 🛠️ Installation

1. Install ffmpeg:
   
   ```bash
   sudo apt-get install ffmpeg
   ```

2. Clone the repository:

   ```bash
   git clone https://github.com/di37/youtube-notes-generator.git
   cd youtube-notes-generator
   ```

3. Create and activate a Conda environment:

   ```bash
   conda create -n yt_notes_generator python=3.11
   conda activate yt_notes_generator
   ```

4. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## 🚀 Usage

1. Run the application:

   ```bash
   streamlit run app.py
   ```

2. Open your web browser and navigate to the URL provided by Streamlit (usually `http://localhost:8501`).

3. Enter a YouTube URL and click "Generate Notes" to create detailed notes for the video.


Here’s a sample `README.md` with explanations and comments for the given commands:

---

# Docker Deployment and Setup Guide

This guide provides a step-by-step explanation of the commands used for setting up Docker, building Docker images, and managing containers. Follow these instructions to deploy and manage Docker applications effectively.

## Prerequisites

- Ensure you have an EC2 instance or a similar environment set up.
- You should have sudo privileges on the machine.

## Commands and Explanations

### Update System and Install Docker

1. **Update the system packages:**

   ```bash
   sudo yum update -y
   ```

   *Updates all system packages to their latest versions.*

2. **Install Docker:**

   ```bash
   sudo yum install docker
   ```

   *Installs Docker on the system.*

3. **Start Docker service using systemctl:**

   ```bash
   sudo systemctl start docker
   ```

   *Starts the Docker service.*

4. **Alternative way to start Docker service using service command:**

   ```bash
   sudo service docker start
   ```

   *Also starts the Docker service, but `systemctl` is preferred on newer systems.*

5. **List all Docker images:**

   ```bash
   docker images
   ```

   *Displays all Docker images available on the system.*

6. **Add the current user to the Docker group:**

   ```bash
   sudo usermod -a -G docker ec2-user
   ```

   *Adds `ec2-user` to the Docker group, allowing the user to run Docker commands without `sudo`.*

### Clone and Build Docker Applications

    

7. **List running Docker containers:**

    ```bash
    docker ps
    ```

    *Displays the list of running Docker containers.*

### Generate SSH Keys and Clone Additional Repositories

8. **Generate an SSH key pair:**

    ```bash
    ssh-keygen
    ```

    *Generates a new SSH key pair.*

9. **Display the public key:**

    ```bash
    cat .ssh/id_rsa.pub
    ```

    *Displays the contents of the public SSH key.*

10. **Clone another repository using SSH:**

    ```bash
    git clone git@github.com:muhammadyahiya/yt-notes-generator.git
    ```

    *Clones the `yt-notes-generator` repository from GitHub using SSH.*



11. **List all Docker containers:**

    ```bash
    docker ps -a
    ```

12. **Create a `.env` file:**

    ```bash
    touch .env
    ```

    *Creates an empty `.env` file.*

13. **Edit the `.env` file:**

    ```bash
    vi .env
    ```

    *Opens the `.env` file in the `vi` editor for editing.*

14. **Rebuild the Docker image if needed:**

    ```bash
    docker build -t my-python-app .
    ```

    *Rebuilds the Docker image tagged `my-python-app`.*

15. **Run the Docker container for the Python app again:**

    ```bash
    docker run -p 8501:8501 my-python-app
    ```



## 🤝 Contributing

Contributions are welcome! Feel free to submit a Pull Request.

## ⭐ Support

If you find this project useful, please consider giving it a star on GitHub!

## 📬 Contact

For any questions or feedback, please open an issue on GitHub.
