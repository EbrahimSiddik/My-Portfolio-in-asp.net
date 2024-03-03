<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="My_portfolio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Portfolio</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="mediaqueries.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!------Header Section------>

    <nav id="desktop-nav">
      <div class="logo">Md. Ebrahim Siddik Zain</div>
      <div>
        <ul class="nav-links">
          <li><a href="#about">About</a></li>
          <li><a href="#experience">Experience</a></li>
          <li><a href="#projects">Projects</a></li>
          <li><a href="#contact">Contact</a></li>
          <li><a href="admin.aspx">Admin</a></li>
        </ul>
      </div>
    </nav>

    <nav id="hamburger-nav">
      <div class="logo">Ebrahim Zain</div>
      <div class="hamburger-menu">
        <div class="hamburger-icon" onclick="toggleMenu()">
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="menu-links">
          <li><a href="#about" onclick="toggleMenu()">About</a></li>
          <li><a href="#experience" onclick="toggleMenu()">Experience</a></li>
          <li><a href="#projects" onclick="toggleMenu()">Projects</a></li>
          <li><a href="#contact" onclick="toggleMenu()">Contact</a></li>
          <li><a href="admin.html" onclick="toggleMenu()">Contact</a></li>
        </div>
      </div>
    </nav>

    <!---------Home Section--------------->

    <section id="profile">
      <div class="section__pic-container">
        <img src="assets/Zain.jpg" alt="Ebrahim Zain profile picture" />
      </div>
      <div class="section__text">
        <p class="section__text__p1">Hello, I'm</p>
        <h1 class="title">Ebrahim Zain</h1>
        <p class="section__text__p2">Frontend Developer</p>
        <div class="btn-container">
          <button
            class="btn btn-color-2"
            onclick="window.open('assets/CV.pdf')"
          >
            Download CV
          </button>
          <button class="btn btn-color-1" onclick="location.href='./#contact'">
            Contact Info
          </button>
        </div>
        <div id="socials-container">
          <img
            src="./assets/linkedin.png"
            alt="My LinkedIn profile"
            class="icon"
            onclick="location.href='https://linkedin.com/'"
          />
          <img
            src="./assets/github.png"
            alt="My Github profile"
            class="icon"
            onclick="location.href='https://github.com/EbrahimSiddik'"
          />
        </div>
      </div>
    </section>

    <!---------about Section --------------->

    <section id="about">
      <p class="section__text__p1">Get To Know More</p>
      <h1 class="title">About Me</h1>
      <div class="section-container">
        <div class="section__pic-container">
          <img
            src="assets/Zain1.jpg"
            alt="Profile picture"
            class="about-pic"
          />
        </div>


        <div class="about-details-container">
          <div class="about-containers">
            <div class="details-container">
              <img
                src="./assets/experience.png"
                alt="Experience icon"
                class="icon"
              />
              <h3>Experience</h3>
              <p>Full Stack Development <br />MERN Development</p>
            </div>
            <div class="details-container">
              <img
                src="./assets/education.png"
                alt="Education icon"
                class="icon"
              />
              <h3>Education</h3>
              <p>B.Sc. Bachelors Degree<br /></p>
            </div>
          </div>
          <div class="text-container">
            <p>
              Assalamualikum. Hello! My name is Ebrahim Siddik Zain. Currently I study in KUET(Khulna University of Engineering & Technology) 
              in CSE. My interest in web development, Programming and game development. My future planning is contributing on web development industry.
              
            </p>
          </div>
        </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#experience'"
      />
    </section>


    <!-----------Experience Section-------------->

    <section id="experience">
      <p class="section__text__p1">Explore My</p>
      <h1 class="title">Experience</h1>
      <div class="experience-details-container">
        <div class="about-containers">
          <div class="details-container">
            <h2 class="experience-sub-title">WEB Development</h2>
            <div class="article-container">
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>HTML</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>CSS</h3>
                  <p>Experienced</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>JavaScript</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>ASP.NET</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>PHP</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>LARAVEL</h3>
                  <p>Basic</p>
                </div>
              </article>
            </div>
          </div>
          <div class="details-container">
            <h2 class="experience-sub-title">Software Programming</h2>
            <div class="article-container">
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>PostgreSQL</h3>
                  <p>Basic</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>JAVA</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>PYTHON</h3>
                  <p>Intermediate</p>
                </div>
              </article>
              <article>
                <img
                  src="./assets/checkmark.png"
                  alt="Experience icon"
                  class="icon"
                />
                <div>
                  <h3>Git</h3>
                  <p>Intermediate</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#projects'"
      />
    </section>


    <!-----------Project Section--------------->

    <section id="projects">
      <p class="section__text__p1">Browse My Recent</p>
      <h1 class="title">Projects</h1>
      <div class="experience-details-container">
        <div class="about-containers">
          <div class="details-container color-container">
            <div class="article-container">
              <img
                src="assets/Garments Industry BD.png"
                alt="Project 1"
                class="project-img"
              />
            </div>
            <h2 class="experience-sub-title project-title">Germents Management System</h2>
            <div class="btn-container">
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Github
              </button>
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Live Demo
              </button>
            </div>
          </div>
          <div class="details-container color-container">
            <div class="article-container">
              <img
                src="assets/Hanoi Bus.jpg"
                alt="Project 2"
                class="project-img"
              />
            </div>
            <h2 class="experience-sub-title project-title">Bus Ticket Management System</h2>
            <div class="btn-container">
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Github
              </button>
              <button
                class="btn btn-color-2 project-btn"
                onclick="location.href='https://github.com/'"
              >
                Live Demo
              </button>
            </div>
          </div>
         </div>
      </div>
      <img
        src="./assets/arrow.png"
        alt="Arrow icon"
        class="icon arrow"
        onclick="location.href='./#contact'"
      />
    </section>

    <!------------------Contact section------------>

  <section id="contact">
    <p class="section__text__p1">Get in Touch</p>
    <h1 class="title">Contact Me</h1>


    <div class="contact-info-upper-container">

      <div class="contact-info-container">

        <div class="contact-form">
          <div>
                <asp:TextBox runat="server" ID="name" placeholder="Fullname" CssClass="input-box" />

           <div>
                <asp:TextBox runat="server" ID="email" placeholder="Email" TextMode="Email" CssClass="input-box" />
           </div>

           <div>
                <asp:TextBox runat="server" ID="phone" placeholder="Phone Number" TextMode="Phone" CssClass="input-box" />

           </div>
            <div>
                <asp:TextBox runat="server" ID="subject" placeholder="Subject" CssClass="input-box" />
            </div>
                <asp:TextBox runat="server" ID="message" placeholder="Your Message to me" TextMode="MultiLine" CssClass="input-box" />
                <asp:Button runat="server" ID="txtSubmit" Text="Send" CssClass="btn" OnClick="txtSubmit_Click"/>

                <asp:Label runat="server" ID="lblError" Text="" />

	      </div>
      </div>

    </div>
      </div>
    

    <div>
      <div class="contact-info-container">
        <img
          src="./assets/email.png"
          alt="Email icon"
          class="icon contact-icon email-icon"
        />
        <p><a href="https://www.ebrahimsiddik865@gmail.com">Gmail</a></p>
      </div>
      <div class="contact-info-container">
        <img
          src="./assets/linkedin.png"
          alt="LinkedIn icon"
          class="icon contact-icon"
        />
        <p><a href="https://www.linkedin.com">LinkedIn</a></p>
      </div>
    </div>
  </section>





    <!---------End Section---------->
    
    <footer>
      <nav>
        <div class="nav-links-container">
          <ul class="nav-links">
            <li><a href="#about">About</a></li>
            <li><a href="#experience">Experience</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </nav>
      <p>Copyright &#169; 2024 Ebrahim Zain. All Rights Reserved.</p>
    </footer>
    <script src="script.js"></script>
        </div>
    </form>
</body>
</html>
