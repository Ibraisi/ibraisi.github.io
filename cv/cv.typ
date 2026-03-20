#import "@preview/basic-resume:0.2.8": *

// ====== Personal info ======
#let name = "Ibrahim Iskif"
#let location = "Helsingborg, Sweden"
#let email = "iskiibra@hotmail.com"
#let phone = "0761658222"
#let personal-site = "ibraisi.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#333333",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

// ====== Summary ======
== Summary
Software engineer focused on backend systems, APIs, and infrastructure. I care about building things that are reliable and easy to maintain. Curious by nature — I learn best by listening and understanding the full picture before acting. Outside of work, I'm a father and an avid reader.


// ====== Professional Experience ======
== Professional Experience

#work(
  company: "Axis Communications",
  location: "Lund, Sweden",
  title: "Software Engineer",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Present"),
)
- Building and maintaining platform services for Axis Cloud Connected — APIs, infrastructure-as-code.

#work(
  company: "BorgWarner",
  location: "Landskrona, Sweden",
  title: "Software Developer",
  dates: dates-helper(start-date: "Feb 2024", end-date: "Aug 2025"),
)
- Built reusable GitLab CI/CD pipeline templates adopted across multiple teams; wrote Grafana dashboards and Python automation scripts.
- Migrated a C++ codebase from Windows to Linux: cut build times from ~1h to ~20min and reduced Docker image sizes from tens of gigabytes to hundreds of megabytes, saving roughly hundreds of runner-hours monthly.

#work(
  company: "Lunicore Student Consulting",
  location: "Lund, Sweden",
  title: "Software Development Consultant",
  dates: dates-helper(start-date: "Sep 2024", end-date: "Jan 2025"),
)
- Built a Dialogflow chatbot to handle FAQs and reduce manual support load.

#work(
  company: "Region Skåne",
  location: "Ystad, Sweden",
  title: "Software Developer Intern",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Jan 2024"),
)
- Built a mobile and web prototype to scan and track medicine expiry dates, reducing manual checking errors.

#work(
  company: "My Special Child",
  location: "—",
  title: "Volunteer",
  dates: dates-helper(start-date: "Nov 2024", end-date: "Present"),
)
- Support children and youth with disabilities in inclusive recreational programs.


// ====== Education ======
== Education
#edu(
  institution: "Lund University",
  location: "Lund, Sweden",
  dates: dates-helper(start-date: "2021", end-date: "2024"),
  degree: "B.Sc. Computer Science",
)
- Focus: software engineering, systems design, algorithms.


// ====== Certifications ======
== Certifications
- AWS Solutions Architect – Associate (in progress)
- AWS Cloud Practitioner
- Linux: Bash Shell and Scripts


// ====== Skills ======
== Skills
- *Languages*: Golang, Python, Java, Bash/Nushell, JavaScript, SQL
- *Tools*: GitLab CI/CD, Docker, Terraform, Grafana, Linux, AWS


// ====== Languages ======
== Languages
- Swedish
- English
- Arabic
