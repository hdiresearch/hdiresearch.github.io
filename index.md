---
layout: hero
parent: home
description: The Human-Data Interaction Community
title: Human-Data Interaction
---

<div class="jumbotron" markdown="1">
  <div class="text-center" markdown="1">
# __Human-Data Interaction__
  </div>
</div>

<div class="container" markdown="1">

<div class="row" markdown="1">

<div class="col-sm-2 col-sm-offset-3" markdown="1">
<div class="text-center" markdown="1">

### [People](/people/)
<hr />

</div>
</div>

<div class="col-sm-2 col-sm-offset-2" markdown="1">
<div class="text-center" markdown="1">

### [Resources](/resources/)
<hr />

</div>
</div>
</div><!-- row -->

<div class="row" markdown="1">
<div class="col-sm-4" markdown="1">

Human-Data Interaction (HDI) is concerned with the increasingly pervasive data
collection our lives are subject to, and the way this is opaque to most people.

</div>

<div class="col-sm-4" markdown="1">

These data, collected about and by us, are analysed and inferences about our
personalities and behaviour are drawn from the results and acted upon.

</div>

<div class="col-sm-4" markdown="1">

We propose placing the human at the centre of these data flows, and providing
mechanisms for citizens to interact with these systems explicitly.

</div>
</div> <!-- row -->

<div class="row" markdown="1">
<div class="text-center" markdown="1">

### [Blog](/blog/)

</div>
</div><!-- row -->

<div class="row" markdown="1">
<div class="col-sm-4" markdown="1">

<ul class="list-unstyled">

{% for post in site.posts limit: 2 %}
        <li>
          <small class="text-muted">
            {{ post.date | date_to_long_string }}
          </small>
          <a href="{{ post.url }}">{{ post.title }}</a>
          <small class="text-muted"><em>
            {{ post.excerpt }}
          </em></small>
        </li>
{% endfor %}

</ul>
</div>

<div class="col-sm-4" markdown="1">

<ul class="list-unstyled">
{% for post in site.posts limit: 2 offset: 2 %}
        <li>
          <small class="text-muted">
            {{ post.date | date_to_long_string }}
          </small>
          <a href="{{ post.url }}">{{ post.title }}</a>
          <small class="text-muted"><em>
            {{ post.excerpt }}
          </em></small>
        </li>
{% endfor %}

</ul>
</div>

<div class="col-sm-4" markdown="1">

<ul class="list-unstyled">
{% for post in site.posts limit: 2 offset: 4 %}
        <li>
          <small class="text-muted">
            {{ post.date | date_to_long_string }}
          </small>
          <a href="{{ post.url }}">{{ post.title }}</a>
          <small class="text-muted"><em>
            {{ post.excerpt }}
          </em></small>
        </li>
{% endfor %}
</ul>
</div>
</div> <!-- row -->

</div><!-- container -->

<!-- force rebuild -->
