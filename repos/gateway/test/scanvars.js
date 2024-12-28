import fs from 'fs';
import path from 'path';

// Specify the file to scan (in this case, 'server.js')
const fileToScan = path.join(process.cwd(), 'server.js');  // Adjust path if needed

// Function to scan for process.env references in the given file
export const scanEnvVars = (file) => {
  const envVars = new Set();

  // Regex to find process.env.<VARIABLE_NAME>
  const envRegex = /process\.env\.(\w+)/g;

  const content = fs.readFileSync(file, 'utf-8');
  let match;
  while ((match = envRegex.exec(content)) !== null) {
    envVars.add(match[1]);  // Add the variable name (without 'process.env.')
  }

  return Array.from(envVars);
};

// Run the scan for the specified file
const envVars = scanEnvVars(fileToScan);

console.log('Detected environment variables:', envVars);
