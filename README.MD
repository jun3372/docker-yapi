
# YApi Docker 搭建环境


### 1. 克隆项目
  `git clone https://github.com/jun3372/docker-yapi.git`

  `cd docker-yapi`

### 2. 拷贝配置文件
  `cp env-example .env`

### 3. 运行安装环境
  `docker-compose up install`

### 4. 安装配置
    注意:
    部署路径填写 /yapi ,
    网站端口号填写web容器暴露端口: 3000 (默认),
    数据库地址填写: mongo,
    数据库端口填写而配置文件MongoDb暴露端口即可: 27017 (默认)

  ![安装配置图](https://github.com/jun3372/docker-yapi/blob/master/images/WX20190128-142333.png?raw=true)

    安装完成

    默认账户名: admin@admin.com
    默认密码: ymfe.org

    关闭安装容器: control + c


### 5. 运行生产环境
  `docker-compose up -d web`

### 6. 更新YApi
    修改配置文件.env

    API_VERSION=需要更新的版本号: v1.4.4

  `docker-compose up update`

### 停止使用
  `docker-compose down`

### 登录后显示空白解决
    创建新账户并设置管理员权限组, 删除旧的管理员账户即可,

    或者对默认管理员用户创建一条group数据
    db.getCollection("group").insert({
        _id: NumberInt("11"),
        "custom_field1": {
            enable: false
        },
        type: "private",
        uid: NumberInt("11"),
        "group_name": "User-11",
        "add_time": NumberInt("1548657509"),
        "up_time": NumberInt("1548657509"),
        members: [ ],
        __v: NumberInt("0")
    });
