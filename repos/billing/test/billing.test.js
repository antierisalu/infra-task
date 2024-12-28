import { expect } from 'chai';
import { scanEnvVars } from './scanvars.js';

describe('Environment Variables', () => {
  let detectedEnvVars;

  before(() => {
    // Scan the consumer.js file for process.env variables
    detectedEnvVars = scanEnvVars('./consumer.js');
  });

  it('should have all required environment variables defined', () => {
    detectedEnvVars.forEach((envVar) => {
      expect(process.env[envVar]).to.not.be.undefined;
    });
  });
});
