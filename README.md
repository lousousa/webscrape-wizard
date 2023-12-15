# WebScrape Wizard ![cli](https://badges.aleen42.com/src/cli.svg)

## Description
A robust web scraping tool that automates data extraction from URLs listed in an input file, organizes scraped data into specified directories, securely transfers data to a remote server, and maintains a clean local workspace by removing local copies after transfer.

## Introduction

### Purpose
To streamline the process of bulk web scraping and secure data transfer.

### Features
- Automated scraping from a list of URLs.
- Organized storage of scraped data.
- Secure transfer of data to a remote server.
- Automatic local data cleanup post-transfer.

## Prerequisites

### Dependencies
- `wget` for web scraping.
- `scp` for secure file transfer.
- Appropriate permissions for file operations and server access.

## Usage

### Basic Usage
Before running the script, ensure the following steps are completed:
1. **Prepare the .env File**: Create a `.env` file in the root directory of the project and add your SSH credentials for secure file transfer. This should include details like `SSH_USER`, `SSH_HOST`, and `SSH_PATH`.
2. **Configure input.txt**: Prepare `input.txt` by listing **directory names** and **URLs** separated by a semicolon (`;`), with each pair on a new line.
3. **Run the Script**: Execute the script to start the scraping process. It will read URLs from `input.txt`, scrape data using `wget`, save it in specified directories, transfer it to the server via `scp`, and then clean up local data.

```bash
source scraper.sh
```
