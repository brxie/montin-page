---
title: "Aktualności"
description: "Najnowsze informacje o decyzjach, terminach, pracach gospodarczych i przygotowaniach do zebrań."
last_modified: 2026-05-24
permalink: /aktualnosci/
---

{% assign updates = site.announcements | where: "type", "Aktualność" | sort: "date" | reverse %}

<section class="page-hero page-hero--compact">
  <div class="container hero-grid">
    <div>
      <p class="eyebrow">Aktualności</p>
      <h1>Najnowsze informacje</h1>
      <p class="lead">{{ page.description }}</p>
    </div>
  </div>
</section>

<section class="section">
  <div class="container notice-list">
    {% for item in updates %}
      <article class="notice{% if item.level == 'important' %} notice--important{% endif %}">
        <div class="notice-meta">
          <time datetime="{{ item.date | date: '%Y-%m-%d' }}">{{ item.date | date: "%d.%m.%Y" }}</time>
          {% if item.type %}<span>{{ item.type }}</span>{% endif %}
        </div>
        <h2><a href="{{ item.url | relative_url }}">{{ item.title }}</a></h2>
        <p>{{ item.description | truncatewords: 25 }} <a class="text-link" href="{{ item.url | relative_url }}">Czytaj więcej →</a></p>
      </article>
    {% endfor %}
  </div>
</section>
