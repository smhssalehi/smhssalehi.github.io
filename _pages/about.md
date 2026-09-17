---
layout: academic
permalink: /
redirect_from:
  - /about/
  - /research/
---
<section class="introduction" aria-labelledby="intro-heading">
  <h1 id="intro-heading" class="visually-hidden">Mohammad H. Seyedsalehi — economist</h1>
  <p>I am a PhD candidate in Economics at the University of Toronto. My research focuses on environmental economics and empirical industrial organization.</p>
  <p>I study how firms’ pricing decisions and consumer choices shape the effectiveness of environmental incentives, with implications for policy design. My econometric research focuses on empirical Bayes methods and the estimation of structural models.</p>
</section>
{% for section in site.data.research %}
<section class="research-section" id="{{ section.id }}" aria-labelledby="heading-{{ section.id }}">
  <h2 class="section-heading" id="heading-{{ section.id }}"><span>{{ section.number }} /</span> {{ section.title }}</h2>
  {% for paper in section.papers %}{% include research-card.html section=section %}{% endfor %}
</section>
{% endfor %}

<section id="teaching" aria-labelledby="heading-teaching">
  <h2 class="section-heading" id="heading-teaching"><span>04 /</span> Teaching</h2>
  <p>I have served as a teaching assistant for more than 2,000 assigned hours during my PhD at the University of Toronto, across undergraduate and graduate courses, with a focus on machine learning, data science, and finance.</p>
  <details class="teaching-details">
    <summary>Teaching experience</summary>
    <ul class="teaching-list">
      <li>Machine Learning Applications in Economics and Finance (5 semesters)</li>
      <li>Financial Economics, Banking, and Corporate Finance (3 semesters)</li>
      <li>Financial Risk Management (3 semesters)</li>
      <li>Microeconomics and macroeconomics</li>
      <li>Environmental and climate economics</li>
      <li>Data analysis and programming</li>
      <li>International trade and economics for public policy</li>
    </ul>
    <p>Before my PhD, I spent seven years teaching mathematics to International Mathematical Olympiad students, including at training camps.</p>
  </details>
</section>
