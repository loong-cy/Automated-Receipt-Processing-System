# Automated-Receipt-Processing-System

## Project Background

This project was created using AWS services to automate the process of manually entering data from receipts, eliminating tedious way of tracking expenses. This system helps to pick up newly uploaded receipts from a local folder, extract data from receipts and stores them efficiently for tracking purposes.

## Architecture

• Amazon S3: Storage of receipt files (i.e., images, PDFs) <br>
• Amazon Textract: Extracts text from receipts using Optical Character Recognition (OCR) <br>
• Amazon DynamoDB: Stores the extracted data in a structured format <br>
• Amazon SES: Send email alerts with receipt details for uploaded receipts <br>
• AWS Lambda: Automate workflow by supporting real-time processing of receipts <br>

## Diagram
<img width="738" height="404" alt="Cloud-Diag" src="https://github.com/user-attachments/assets/3450d277-102e-4bb6-b0bc-c0cec9812c35" />

Process flow:
1. User uploads their receipt(s) to their local folder. <br>
2. The newly added receipt(s) in the folder are picked up by the system and then synced with the S3 bucket. <br>
3. Once S3 detects the receipts, it automatically triggers the Lambda function. <br>
4. Lambda then invokes Amazon Textract to extract data from the receipts. <br>
5. After which, Amazon Textract returns the structured data to Lambda. <br>
6. Lambda function stores the extracted data into the DynamoDB table. <br> 
7. Lambda function handles the sending of email notifications to user using Amazon SES. <br>

## Project Demo
Check out this quick demo video:<br><br>
[<img src="https://img.youtube.com/vi/3dIT0ZtFOUc/hqdefault.jpg" width="600" height="300"
/>](https://www.youtube.com/embed/3dIT0ZtFOUc)
