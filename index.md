---
layout: hero
parent: home
description: The Human-Data Interaction Community
title: Human-Data Interaction
---

+-- {.jumbotron}
+--  {.center-block}
# __Human-Data Interaction__
=--
=--

+-- {.container}
+--  {.row}
+--  {.col-sm-4}

Human-Data Interaction (HDI) is a research agenda concerned with the increasingly pervasive data collection and analysis of our everyday lives.

=--

+--  {.col-sm-4}

Data, collected about and by us, is analysed and inferences about our personalities and behaviour are drawn from the results and acted upon.

=--

+--  {.col-sm-4}

We propose placing the human at the centre of these data flows, and providing mechanisms for citizens to interact with these systems explicitly. 

=--
=--

+--  {.col-lg-12}


<ul class="list-unstyled">
  {% for post in site.posts limit: 5 %}
    <li>
      <small class="text-muted">{{ post.date | date_to_long_string }}</small>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <small class="text-muted"><em>
        {{ post.excerpt }}
      </em></small>
    </li>
  {% endfor %}
</ul>

=--
=--
