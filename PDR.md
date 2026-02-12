# Project Development Plan: LLM-Based Resume Search Tool

## 1. Project Overview

This document outlines the plan for developing an LLM-based search tool for the personal resume website. The goal of this project is to create a tool that allows users (e.g., recruiters) to search and filter the resume content using natural language queries. This will enable a more intuitive and efficient way to assess the candidate's fit for a specific job description.

The tool will take a job description or a natural language query as input and will return a summary of how the candidate's experience and skills match the input.

## 2. Architecture

The proposed architecture consists of a frontend, a backend, and an LLM service.

### Frontend

The frontend will be a single-page application (SPA) built with a modern JavaScript framework. It will provide the user interface for the search tool and will communicate with the backend via a RESTful API.

### Backend

The backend will be a server-side application responsible for handling user requests, interacting with the LLM service, and processing the resume data. It will expose a single API endpoint for the search functionality.

### LLM Integration

The backend will integrate with a Large Language Model (LLM) to perform the search. The user's query and the resume data will be sent to the LLM, which will then be prompted to analyze the resume and provide a summary of the candidate's fit.

## 3. Technology Stack

### Frontend

*   **HTML5 & CSS3:** For the structure and styling of the web page.
*   **JavaScript (ES6+):** For the client-side logic.
*   **React:** A popular JavaScript library for building user interfaces.
*   **Tailwind CSS:** A utility-first CSS framework for rapid UI development.

### Backend

*   **Node.js:** A JavaScript runtime for building server-side applications.
*   **Express.js:** A minimal and flexible Node.js web application framework.
*   **LLM API:** We will use a third-party LLM API (e.g., OpenAI's GPT, Google's Gemini, or Anthropic's Claude) for the natural language processing.

## 4. Implementation Plan

The implementation will be divided into the following steps:

1.  **Setup Backend:**
    *   Initialize a new Node.js project.
    *   Set up an Express.js server.
    *   Create an API endpoint `/api/search` that accepts a POST request with a search query.

2.  **Integrate LLM:**
    *   Choose an LLM provider and get an API key.
    *   Install the necessary client library for the LLM API.
    *   Implement the logic to call the LLM API with the user's query and the resume data.

3.  **Develop Frontend:**
    *   Create a new React component for the search tool.
    *   Add an input field for the user to enter their search query.
    *   Add a button to trigger the search.
    *   Implement the logic to call the backend API and display the results.

4.  **Data Management:**
    *   The resume data will be extracted from the `main.tex` file and stored in a structured format (e.g., JSON or plain text) that can be easily processed by the backend.
    *   The backend will load the resume data into memory or a simple database.

5.  **Deployment:**
    *   The frontend and backend will be deployed to a cloud platform (e.g., Vercel, Netlify, or Heroku).

## 5. Data Management

The resume data will be extracted from the `main.tex` file and stored as a plain text file. This file will be read by the backend and passed to the LLM for processing. For a more advanced solution, the resume could be parsed into a structured JSON format.

## 6. User Interface

The user interface will be simple and intuitive. It will consist of:

*   An input field where the user can paste a job description or type a query.
*   A "Search" button to initiate the search.
*   A result area where the summary of the candidate's fit will be displayed.
*   A loading indicator to provide feedback to the user while the search is in progress.
