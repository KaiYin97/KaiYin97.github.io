---
title: "Publications"
permalink: /publications/
author_profile: true
---

For a full list, please also see my [Google Scholar](https://scholar.google.com/citations?user=BxI1FVwAAAAJ&hl=en).

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
