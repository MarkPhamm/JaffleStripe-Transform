# Airflow dbt Project

This project serves as a comprehensive demonstration of how to effectively run dbt models using Apache Airflow, specifically tailored for Snowflake environments. It showcases the integration of dbt with Airflow, utilizing the Astro framework to streamline the deployment and management of workflows.

The setup is designed to work seamlessly on both Linux and Windows operating systems, leveraging Windows Subsystem for Linux (WSL) to provide a robust development experience. This project not only highlights the capabilities of dbt and Airflow but also emphasizes best practices for data transformation and orchestration in modern data engineering workflows.

# Astro CLI features
With the Astro CLI, you can:

Run Airflow on your local machine in minutes.
Parse, debug, and test DAGs in a dedicated testing environment.
Manage your Astro resources, including Workspaces and Deployments.


# dbt Macros
.sql files are wrapped in Jinja to adhere to the DRY (Don't Repeat Yourself) principle, allowing for the application of consistent business logic across models. Macros are similar to functions; they take input, transform it, and return a result.

For example, consider a macro that calculates a discounted amount based on extended price and discount percentage. Here’s how you might define such a macro in a `.sql` file:

```jinja
{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    
    (-1 * {{extended_price}} * {{discount_percentage}})::decimal(16, {{ scale }})

{% endmacro %}
```