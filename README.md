# Automated-Receipt-Processing-System

## Project Background

This project was created using AWS services to automate the process of manually entering data from receipts, eliminating tedious way of tracking expenses. This system helps to pick up newly uploaded receipts from a local folder, extract data from receipts and stores them efficiently for tracking purposes.

## Architecture

• Amazon S3: Storage of receipt files (i.e., images, PDFs)
• Amazon Textract: Extracts text from receipts using Optical Character Recognition (OCR)
• Amazon DynamoDB: Stores the extracted data in a structured format
• Amazon SES: Send email alerts with receipt details for uploaded receipts
• AWS Lambda: Automate workflow by supporting real-time processing of receipts

## Diagram
