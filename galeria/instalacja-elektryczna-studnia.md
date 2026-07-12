---
title: "Przygotowanie instalacji elektrycznej studni"
description: "Dokumentacja fotograficzna prac związanych z przygotowaniem instalacji elektrycznej przy studni."
permalink: /galeria/instalacja-elektryczna-studnia/
---

<section class="page-hero page-hero--compact">
  <div class="container hero-grid">
    <div>
      <p class="eyebrow">Galeria</p>
      <h1>Przygotowanie instalacji elektrycznej studni</h1>
      <p class="lead">{{ page.description }}</p>
    </div>
  </div>
</section>

<section class="section section--plain gallery-section" id="instalacja_elektryczna_studnia">
  <div class="container">
    <div class="photo-gallery" aria-label="Przygotowanie instalacji elektrycznej studni">
      {% for image_index in (1..21) %}
        {% if image_index < 10 %}
          {% assign image_number = image_index | prepend: '0' %}
        {% else %}
          {% assign image_number = image_index %}
        {% endif %}
        {% capture image_path %}/assets/galeria/instalacja-elektryczna-studnia/studnia-instalacja-{{ image_number }}.jpg{% endcapture %}
        <figure class="photo-gallery__item">
          <a href="{{ image_path | relative_url }}">
            <img src="{{ image_path | relative_url }}" alt="Przygotowanie instalacji elektrycznej studni - zdjęcie {{ image_index }}" loading="lazy">
          </a>
        </figure>
      {% endfor %}
    </div>

    <p style="margin-top:2rem"><a href="{{ '/galeria/' | relative_url }}" class="text-link">← Wszystkie galerie</a></p>
  </div>
</section>
