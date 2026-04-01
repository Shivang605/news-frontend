# 1️⃣ Use Node 24
FROM node:24

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy package.json and package-lock.json
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy all project files
COPY . .

# 6️⃣ Build the frontend
RUN npm run build

# 7️⃣ Install lightweight server to serve the build
RUN npm install -g serve

# 8️⃣ Expose port 3000
EXPOSE 3000

# 9️⃣ Start the app using serve
CMD ["serve", "-s", "dist", "-l", "3000"]
