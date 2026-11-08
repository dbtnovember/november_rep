{% macro num_add(a,b,c) %}
{{a}}+{{b}}+{{c}}
    
{% endmacro %}

{% macro char_con(a, b) %}
    {{ a }} || {{ b }}
{% endmacro %}
