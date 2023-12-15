# WebScrape Wizard

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

### Installation
Provide instructions for installing `wget` and `scp` if not already available on the user's system.

## Installation and Setup

### Downloading the App
Steps to clone/download your repository.

### Configuration
Instructions for setting up the application, including the setup of `input.txt`.

## Usage

### Basic Usage
- Prepare `input.txt` with directory and **URLs** names line by line, separated by semicolon.
- Run the script to initiate scraping, storing, transferring, and cleanup.

```bash
source scraper.sh
```

## File Format

### input.txt Structure
Describe the expected format of `input.txt`, including how to list **directory names** and **URLs**, line by line and separated by semicolon.

## Troubleshooting

### Common Issues
Solutions to common problems like permission errors, `wget` or `scp` failures, etc.
