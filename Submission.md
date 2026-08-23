Hackathon Submission — Smart Product Price Tracker

## Project description

Smart Product Price Tracker uses Bright Data Scraper Studio to convert publicly available product information into structured data that can be consumed by a simple dashboard.

The project focuses on reliable web-data collection rather than one-time scraping. A Bright Data Collector ID is created for the target page, the collector is run to return structured JSON, and the same collector can be repaired with `bdata scraper heal` when the target site's structure changes.

## Problem

Product information changes frequently. A scraper can stop working when a website changes its HTML structure, even though the information is still publicly available.

## Solution

The project describes the required fields in plain language, uses Bright Data Scraper Studio to generate the scraper, runs the Collector ID to obtain structured JSON, and provides a lightweight browser viewer for the results. The self-healing workflow allows the existing collector to be repaired without rebuilding the downstream viewer.

## Bright Data usage

Bright Data Scraper Studio is the core scraping component.

Main flow:

1. `bdata scraper create <URL> "<data requirements>"`
2. `bdata scraper run <COLLECTOR_ID> <URL>`
3. `bdata scraper heal <COLLECTOR_ID> "<what broke>"`
4. Review and approve the proposed repair.

## Structured output

The intended output contains:

- product_name
- price
- currency
- availability
- rating
- discount
- product_url

## Reliability / self-healing

The project demonstrates the important failure case: the target site's extraction structure can change. Instead of changing the dashboard or rebuilding the whole pipeline, the existing Collector ID is sent to Scraper Studio's healing workflow with a description of the failure.

## What was built on top

A simple browser dashboard presents the structured product data in a readable table and highlights price, availability, rating, and discount.

## Public-data policy

The project is designed for publicly available pages only. It does not use login-protected, paywalled, or personal data.

## Repository files

- `README.md` — project overview and setup
- `SUBMISSION.md` — ready-to-use submission description
- `scripts/run-pipeline.sh` — scraper run pipeline
- `scripts/heal-demo.sh` — self-healing demonstration
- `viewer/index.html` — browser dashboard
- `prompts/create-prompt.md` — Scraper Studio creation prompt
- `LICENSE` — MIT license
- `.gitignore` — prevents common secrets and junk files from being committed

- https://github.com/saniyakhan0786-stack/Scrap-verse-hackathon-
