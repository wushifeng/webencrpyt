##主体目录
bin 辅助运行的一些脚本和批处理文件
db 数据库的建立SQL和相关数据
doc 文档文件
lib maven仓库不存在的包，手工安装
src/main 供发布的根目录
src/test 单元测试使用根目录
tool 杂项的各列工具和配置等

##代码部分
java java代码根目录
    common 通用的代码类
    controller 控制器
    model 数据库实体类，优选code-first的形式，由代码建立表
    service 服务部分
resources 各类配置文件
    dbg_* 开头的表示只在开发环境下使用
    