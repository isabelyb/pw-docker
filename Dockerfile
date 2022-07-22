FROM mcr.microsoft.com/playwright:v1.24.0-focal

WORKDIR /app
COPY . .
RUN npm install -y

# Run playwright test
CMD [ "npx", "playwright", "test", "--reporter=list" ]