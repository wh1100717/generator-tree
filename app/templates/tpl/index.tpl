{% extends "layout.tpl" %}

{% block content %}
<div class="container">
    <div class="row">
        {{env.world}} <br>
        1 + 2 is {{env.a + env.b}}
    </div>
</div>

<script>
Grass.ready(function(){
  require(['js/home'], function(Home){
    Home.init();
  })
})
</script>
{% endblock %}
