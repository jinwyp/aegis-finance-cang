# aegis-finance-cang
# 供应链金融 - 仓押项目

## 后端环境

1. 第一次运行本项目, 需要先创建数据库, 在aegis-finance-cang 目录下执行 ``` sh initdatabase.sh ```
2. 运行项目 在aegis-finance-cang 目录下执行 ``` mvn clean spring-boot:run ``` 管理后台地址: http://127.0.0.1:8003/warehouse/admin, 网站地址 http://127.0.0.1:8003/finance
3. 目前本项目只能在本地运行, docker还没配置好
4. 全部的URL和API, 请看docs目录下的 readme



## 仓押 管理后台 frontend-admin 前端环境

- 使用Gulp 作为前端编译工具  ``` npm install gulp -g ```  
- 使用webpack 前端打包管理工具  ``` npm install webpack webpack-dev-server -g ``` 
- 进入 frontend-admin/src 下运行 ``` npm install ```  安装前端代码编译工具依赖库 ``` SASS_BINARY_SITE=https://npm.taobao.org/mirrors/node-sass/ npm install --registry=https://registry.npm.taobao.org --phantomjs_cdnurl=https://npm.taobao.org/mirrors/phantomjs ```
- 运行 ``` npm install ```  安装前端代码依赖库
- 开发环境下 运行 npm run dev 进入监视 sass 文件改动自动编译css,  http://localhost:8000/warehouse/admin/login
- 生产环境下 使用 gulp build 进行生产环境打包。




### 
- npm 安装 node-sass 网速慢的 可以 运行 ```npm config set registry https://registry.npm.taobao.org```  
- 然后 编辑 ~/.npmrc 加入下面内容
```
registry=https://registry.npm.taobao.org
sass_binary_site=https://npm.taobao.org/mirrors/node-sass/
phantomjs_cdnurl=http://npm.taobao.org/mirrors/phantomjs
ELECTRON_MIRROR=http://npm.taobao.org/mirrors/electron/
```

## 前端单元测试 

- 安装 Karma 命令行 ``` npm install -g karma-cli --registry=https://registry.npm.taobao.org --phantomjs_cdnurl=https://npm.taobao.org/mirrors/phantomjs
- 进入 frontend-admin/src 下运行``` karma start karma.conf.js ``` 或 ``` npm test ```


## E2E 测试 端到端的场景测试 

- 安装 [Protractor](http://www.protractortest.org/) 命令行 ``` npm install -g protractor ```
- 运行 ``` webdriver-manager update ```  有可能下载失败，网速太慢，需要翻墙
- （可以不用运行该步骤）运行 ``` webdriver-manager start ```  启动 Selenium Server at http://localhost:4444/wd/hub.
- 进入 frontend-admin/src 运行 ``` protractor ``` 或 ``` npm run e2e ``` 开始进行测试, 完成后打开 frontend-admin/src/testing/report/htmlReport.html 查看测试结果                                  



## docker环境准备
1. 从以下仓库获取最新代码: aegis-docker, docker-nginx, git@github.com:yimei180/docker-redis-finance.git
2. 进入docker-mysql目录, 运行 ```make start enter``` , 然后进入数据库, 创建 warehouse_db 数据库






### API 规范 请看DOCS 目录 readme


### Swagger文档查看
http://localhost:8002/swagger/swagger-ui.html
