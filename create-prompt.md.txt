# Scraper Studio Creation Prompt

Use this prompt with Bright Data Scraper Studio:

> Scrape this publicly available product listing page and return one structured record per product. Extract the product name, current price, currency, availability/stock status, rating if available, discount if available, and product URL. Preserve these exact output field names: product_name, price, currency, availability, rating, discount, product_url. Return clean structured JSON. Do not collect login-protected, personal, or private information.

## Self-healing prompt

If extraction breaks after a page structure change, use:

> The scraper is no longer extracting product price and availability because the target page structure changed. Find the new locations of those fields and repair the extraction while preserving the existing output field names and JSON shape. Verify the repaired fields with sample results.
