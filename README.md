# api-proxy



该项目为代理服务器，仅供学习和研究使用。







## 快速开始

- 安装

  ```bash
  git clone https://github.com/TheRamU/api-proxy.git
  cd api-proxy
  npm install
  ```

- 配置证书

  `app.js`

  ```js
  const PRIVATE_KEY = "./certs/key.pem";
  const CERT_CHAIN = "./certs/cert.pem";
  ```

- 运行

  ```bash
  npm start
  ```







## 以 Systemctl 方式运行



- 安装

  ```bash
  git clone https://github.com/TheRamU/api-proxy.git
  cd api-proxy
  sh install.sh
  ```

- 配置证书

  `app.js`

  ```js
  const PRIVATE_KEY = "./certs/key.pem";
  const CERT_CHAIN = "./certs/cert.pem";
  ```

- 启动服务 & 配置自启动

  ```bash
  sudo systemctl start api-proxy
  sudo systemctl enable api-proxy
  ```

  启动失败

  ```bash
  vim /etc/sysconfig/selinux
  ```

  ```
  SELINUX=disabled
  ```






## 部署服务

[![](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/TheRamU/api-proxy)







## 代理API

- [x] **OpenAI**：https://proxyhost/api/proxy/openai

  ```bash
  curl https://proxyhost/api/proxy/openai/v1/completions \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -H "Content-Type: application/json" \
    -d '{"prompt": YOUR_PROMPT, "model": MODEL}'
  ```

- [x] **Gemini-Pro**：https://proxyhost/api/proxy/gemini-pro

  ```bash
  curl \
    -H 'Content-Type: application/json' \
    -d '{"contents":[{"parts":[{"text":"Hello"}]}]}' \
    -X POST https://proxyhost/api/proxy/gemini-pro?key=YOUR_API_KEY
  ```
