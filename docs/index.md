---
layout: default
title: Home
---

## Projects

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }}) — {{ post.date | date: "%d %B %Y" }}
{% endfor %}

---

## Feedback, Contributing & Sharing

Feedback is more than welcome! Feel free to reach out via email at [paulalexander23@live.co.uk](mailto:paulalexander23@live.co.uk).

You can also contribute directly by submitting issues or pull requests on [GitHub](https://github.com/paulalexander23/). Whether it’s a bug fix, suggestion, or new idea — it’s appreciated!

**Code:**  
All source code is licensed under the [MIT License](LICENSE), allowing for reuse with minimal restrictions.

**Content:**  
All blog content is licensed under the [Creative Commons Attribution 4.0 International License](LICENSE_content).  
You're welcome to share, adapt, and build upon the writing — even for commercial purposes — as long as you give proper credit by linking back and attributing the work to **Paul Alexander**.

**Attribution example:**

``` txt
Originally published by Paul Alexander at https://paulalexander23.github.io
```
