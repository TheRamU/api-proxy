import serverless from 'serverless-http';
import app from '../api/proxy.js';

export const handler = serverless(app);