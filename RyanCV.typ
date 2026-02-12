// Ryan Matthews - CV
// Compile: typst compile cv.typ

#set document(title: "Ryan Matthews - CV", author: "Ryan Matthews")
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
#set text(font: "Libertinus Serif", size: 10pt)
#set par(justify: true)

// Colors
#let primary = rgb(0, 79, 144)
#let accent = rgb(50, 50, 50)

// Section heading style
#show heading.where(level: 1): it => {
  v(6pt)
  text(size: 14pt, weight: "regular", smallcaps(it.body))
  v(-4pt)
  line(length: 100%, stroke: 0.5pt + black)
  v(4pt)
}

// Link styling
#show link: set text(fill: rgb(0, 51, 153))

// Helper: job entry with company header
#let job-entry(title, dates, bullets) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold", title),
    text(style: "italic", dates),
  )
  v(-2pt)
  for bullet in bullets {
    block(inset: (left: 1em, top: 2pt))[-- #bullet]
  }
  v(4pt)
}

// Helper: company with multiple roles
#let company-header(name, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(size: 12pt, weight: "bold", name),
    text(style: "italic", dates),
  )
  v(-2pt)
  line(length: 5%, stroke: 1.5pt + primary)
  v(-2pt)
}

#let sub-role(title, dates, bullets) = {
  pad(left: 1em)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(weight: "bold", title),
      text(style: "italic", dates),
    )
    #v(-2pt)
    #for bullet in bullets {
      block(inset: (left: 1em, top: 2pt))[-- #bullet]
    }
    #v(4pt)
  ]
}

// ============================================================
// HEADER
// ============================================================
#v(20pt)
#grid(
  columns: (1fr, 3.2cm),
  gutter: 12pt,
  [
    #text(size: 24pt, weight: "bold")[Ryan Matthews]
    #v(-4pt)
    #text(size: 9pt)[
      #link("https://linkedin.com/in/ryan-j-matthews")[🔗 ryan-j-matthews] #h(6pt)|#h(6pt)
      #link("mailto:ryanjmatthews@gmail.com")[ryanjmatthews\@gmail.com]\   +49 176 3459 9887 #h(6pt)|#h(6pt)
      #link("https://github.com/Darainer")[github.com/Darainer]
    ]
    #v(4pt)
    #text(size: 12pt)[
      Engineering leader with 10+ years of experience architecting and building autonomous systems. I combine a unique background in defence systems engineering (Royal Australian Navy) and high-fidelity simulation with software and modern AI perception for complex autonomous environments. I am passionate about building technology that solves real-world operational challenges.
    ]
  ],
  [
    
    #image("profile_pic_ryan.png", width: 140%)
  ],
)

// ============================================================
// WORK EXPERIENCE
// ============================================================
#v(2pt)
= Work Experience

#company-header("Luminar Technologies", "Oct 2020 -- Present")

#sub-role("Program Lead – Perception Software", "Oct 2024 -- Present", (
  "Leading commercial and technical aspects of Luminar's flagship perception software program, guiding delivery toward a vehicle production launch.",
  "System and software architectural design of the perception solution.",
  "Deep learning model architecture, data collection and labelling.",
  "Customer, system and software requirements management including delivery scope definition.",
))

#sub-role("ADAS Software and System Architect", "Jul 2022 -- Oct 2024", (
  "Provided technical leadership in scaling the software department from R&D to productization of software and lidar systems for ADAS/AD.",
  "Designed modular perception software architecture enabling reuse across multiple customer platforms and Lidar variants.",
  "Focused software product scope on functionality that resonated with OEMs, driving adoption and reuse.",
))

#sub-role("Product Lead – Active Safety Software", "Oct 2020 -- Sep 2022", (
  "Defined roadmap for a lidar-first approach to active safety and ADAS.",
  "Built and mentored a new software team, scaling safety-critical expertise from scratch.",
  "Delivered customer-facing demos (CES, IAA) that secured OEM interest and established Luminar's software credibility.",
))

#job-entry("Samsung Electronics -- Product Owner, ADAS", "Apr 2019 -- Oct 2020", (
  "Led camera-only AEB NCAP 2022+ product development using Samsung SoC as the first safety-critical application.",
  "Directed algorithm development and SoC design to meet application performance and safety standards.",
))

#job-entry("Zenuity (Volvo / Autoliv JV) -- Senior Software Engineer", "Mar 2018 -- Apr 2019", (
  "Developed ADAS functions and algorithms for highway automation features (L1–L3).",
  "Introduced KPI-driven, data-based software validation on global datasets.",
))

#job-entry("Autoliv Electronics -- Technical Lead, ADAS Functions", "Oct 2016 -- Mar 2018", (
  "Led ADAS algorithm R&D for camera-only highway cruising functions.",
  "Delivered successful OEM demos resulting in major program wins.",
))

#pagebreak()

#job-entry("TESIS DYNAware -- Technical Lead / Simulation Specialist", "Apr 2011 -- Sep 2016", (
  "Managed software projects exceeding $1M budget with teams of up to 10 developers for ADAS and hybrid drivetrain simulation.",
  "Delivered software solutions to major Tier 1 and OEM customers.",
))

#job-entry("Australian Submarine Corporation -- Mechatronic Engineer", "Jan 2007 -- Apr 2010", (
  "Fast-paced, high-pressure mechatronic system defect resolution on active Royal Australian Navy Collins-class submarines, maintaining peak operational readiness in fleet base west.",
  "System design assignments across control systems, power generation and hydraulics domains.",
  "Delivered platform capability upgrade programs during wet and dry docking activities, integrating hardware and software changes into operational platforms.",
))

// ============================================================
// EDUCATION
// ============================================================

= Education

#grid(
  columns: (1fr, auto),
  row-gutter: 6pt,
  [*B.Eng (Hons), Mechatronic Engineering*], [University of Adelaide],
  grid.cell(colspan: 2)[#text(style: "italic", size: 9.5pt)[First Class Honours, Dean's List, Aerospace Project Award]],
  [*Submarine Design Masters Coursework*], [University of Adelaide],
  grid.cell(colspan: 2)[#text(style: "italic", size: 9.5pt)[Submarine design principles, system design, operational range simulation]],
  [*Bachelor of Economics*], [University of Adelaide],
  grid.cell(colspan: 2)[#text(style: "italic", size: 9.5pt)[Major in Mathematical Modelling and Statistics]],
)

// ============================================================
// SKILLS
// ============================================================

= Skills

#grid(
  columns: (auto, 1fr),
  row-gutter: 4pt,
  column-gutter: 16pt,
  [Programming], [C, C++, Python, MATLAB/Simulink],
  [Tooling & Standards], [ISO 26262, ISO 21448 (SOTIF), AUTOSAR C++14, ],
  [Domains], [Autonomous Systems, Defence, Perception, Lidar, Camera, Radar, Deep learning applications, Real-time Embedded system design, Program Management, Product Strategy],
  [Soft Skills], [Product Leadership, Technical Direction, Customer Engagement, Team Building],
)

// ============================================================
// FURTHER EDUCATION
// ============================================================

= Further Education

#grid(
  columns: (auto, 1fr),
  row-gutter: 4pt,
  column-gutter: 16pt,
  [2024], [Deep Learning Specialization — #link("https://www.deeplearning.ai")[DeepLearning.AI]],
  [2023], [Creative Leadership Certificate — #link("https://mvr.de")[MVR.DE]],
  [2022], [Modern C++ Training — #link("https://klaus-iglberger.com")[Klaus Iglberger]],
  [2020], [Professional Scrum Product Owner — #link("https://scrum.org")[Scrum.org]],
  [2017], [Certified Scrum Master — #link("https://scrumalliance.org")[Scrum Alliance]],
  [2014], [Project Management Professional (PMP#super[®]) — #link("https://www.pmi.org")[PMI]],
)

// ============================================================
// LANGUAGES
// ============================================================

= Languages

English (Native), German (C1, Full Professional)

= Security

Previously held Secret level Australian Defence security clearance.