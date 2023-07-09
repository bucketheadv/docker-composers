# 多环境部署
1. 修改apolloportaldb.sql中的eureka.service.url, 将localhost修改为宿主机ip地址(en0网卡ip地址)
2. 执行目录下所有SQL
3. 修改.env 文件中的ip地址为宿主机ip地址(en0网卡ip地址), 修改数据库用户名和密码配置
4. 执行docker compose -f docker-compose.yml up