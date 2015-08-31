---
layout: page
section: blog
parent: home
description: The HDI Blog
title: Human-Data Interaction Blog
---

<div class="col-lg-12">

<ul class="list-unstyled">
  {% for post in site.posts %}
    <li>
      <span class="text-muted">{{ post.date | date_to_long_string }}</span>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

</div>
