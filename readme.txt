# 安装虚拟环境
pip3.9 install virtualenv -i https://pypi.tuna.tsinghua.edu.cn/simple

# 创建虚拟环境
virtualenv venv

# 激活虚拟环境
source venv/bin/activate

# 安装依赖
pip3.9 install -r requirements.txt

# 运行应用程序
sh restart.sh