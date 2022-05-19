## CHANGELOG

- 新增功能，用户上传书籍
- 新增文件UserAddBookTest.jsp 用户新增文件页面 （界面需要优化）
- 修改文件AddProductServlet.java 
- 修改文件menu_search.jsp 在divmenu中增加herf“上传图书”
- 新增文件UserAddProductServlet.java
- 修改文件web.xml,新增<servlet>UseraddProduct 
- 修改文件UserAddProductServlet.java，增加判断用户权限功能
- 在head.jsp增加上传图书href

### 4.19
- 新增用户发贴功能
- mysql 在itcaststore中新建message表
- 在cn.itcast.itcaststore.dao下新建MessageDao.java文件
- 在cn.itcast.itcaststore.domain下新建Message.java文件
- 在cn.itcast.itcaststore.service下新建MessageService.java文件
- 在cn.itcast.itcaststore.web.servlet.manager下新建AddMessageServlet.java文件
- 在WebContent/client目录下新建userAddMessage.jsp文件，用户发表帖子页面（界面需要优化）
- 修改文件WeChat.jsp,增加上传帖子href
- 修改文件web.xml,新增<servlet>/manager/AddMessageServlet
- 修改文件web.xml,新增<servlet>showMessages
- 新增页面showMessage.jsp

### 4.20 AM
- userAddMessage.jsp已优化
- showMessage.jsp已优化
- WeChat.jsp.jsp已优化
- UserAddBookTest.jsp已优化
- menu_search.jsp中部分bug修改

### 4.20 PM
- 在cn.itcast.itcaststore.web.servlet.client下新增文件ShowMessagesServlet.java
- 修复<servlet>showMessages 无法读取message和ptime问题
	- 修改文件MessageDao.java
	- 修改文件Message.java
	- 修改文件showMessage.jsp （showMessage.jsp页面需要进一步优化）
- 修改文件menu_search.jsp
- 修改文件itcaststore/src/cn/itcast/itcaststore/utils/MailUtils.java，修复用户注册时不能正确发送激活邮件的bug
- 新增itcaststore/WebContent/html/文件夹，存放帮助中心helpPage.jsp页面
- 修改head.jsp文件，加入“帮助中心”href

### 4.21 AM
- 新增功能，根据用户查询帖子
	- 新增文件cn.itcast.itcaststore.web.servlet.client.showMyMessServlet.java
	- 在WebContent/client/ 文件夹下，新增user文件夹（后续新开发的用户相关的jsp文件可以放在这里）
	- 在user文件夹下新增 myMessage.jsp文件，按用户显示信息
	- 修改文件web.xml,新增<servlet>showMyMessage
- 在 “我的账户” 新增 “查看我上传的书籍” 信息
	- 新建 booklist.jsp 文件
	- 修改 modifyuserinfo.jsp 文件
	- 修改 orderlist.jsp 文件
	- 修改 myAccount.jsp 文件

### 4.21 PM
- 修复search按钮，按书名搜索书籍功能不可用的bug
	- 修改文件ShowProductByPageServlet.java
	- 修改文件product_list.jsp
	- 修改文件EncodingFilter.java
	- 修改文件menu_search.jsp
- 增加用户查看评论权限判断
	- 修改文件showMyMessServlet.java
- 修改文件MessageDao.java，查询到的message按id倒序排列

### 4.22 AM
- 修复购物车继续购物按钮无法返回主页bug
	- 修改文件 cart.jsp
- 新增功能“查看我上传的书籍”
	- mysql 在 products表内最后新增元素 user （设计表截图在itcaststore/ProgramImages中）
	- 修改文件 ProductDao.java
	- 修改文件 Product.java
	- 修改文件 ProductService.java
	- 新增文件 cn.itcast.itcaststore.web.servlet.client.FindProdictByUserServlet.java
	- 修改文件 web.xml,新增 <servlet>findProductByUser
	- 修改文件 booklist.jsp 
	- 修改文件 modifyuserinfo.jsp 
	- 修改文件 orderlist.jsp 
	- 修改文件 myAccount.jsp 
- 修改pay.jsp文件订单号和支付金额文本框属性为readonly

### 4.22 PM
- 整合前后端

### 4.23 PM
- 整合前后端资源

### 4.26
- 新增功能“账户余额”
	- mysql 在 user表内最后新增元素 balance （设计表截图在itcaststore/ProgramImages中）
	- 修改文件 User.java
	- 修改文件 UserDao.java
	- 修改文件 UserService.java
	- 修改文件 booklist.jsp 
	- 修改文件 modifyuserinfo.jsp 
	- 修改文件 orderlist.jsp 
	- 修改文件 myAccount.jsp
- 整合前后端资源
	
### 4.27AM
- 新增用户使用账户余额支付逻辑
	- 修改文件 PayServlet.java
	- 修改文件 ChangeOrderStateServlet.java
	- 修改文件 pay.jsp
### 4.27PM
- 开发买家结账后，卖家收到书款80%的逻辑。（开发中遇到问题，未完成）

### 4.28AM
- 开发买家结账后，卖家收到书款80%的逻辑。
	- 修改文件 PayServlet.java
	- 修改文件 ChangeOrderStateServlet.java
	- 修改文件 AddCartServlet.java
	- 修改文件 OrderDao.java
	- 修改文件 OrderItemDao.java
	- 修改文件 OrderItem.java
	- 修改文件 OrderService.java

### 4.29AM
- 完善用户修改个人信息功能
	- 修改文件 UserDao.java
	- 修改文件 UserService.java
	- 新增文件 UpdateUserServlet.java
	- 新增文件 updateUser.jsp
	- 修改文件 web.xml ,新增<servlet>updateUser
	- 修改文件 modifyuserinfo.jsp

### 4.29PM
- 在进入 userAddMessage.jsp前判断用户权限
	- 新建文件 MessagePServlet.java
	- 修改文件 web.xml ,新增<servlet>messagePermission
	- 修改文件 showMessage.jsp

### 4.30AM
- 在进入 userAddBook.jsp前判断用户权限
	- 新建文件 BookPServlet.java
	- 修改文件 web.xml ,新增<servlet>BookPermission
	- 修改文件 head.jsp
- 用户注册用户名唯一性判断
	- 修改文件 RegisterServlet.java
	- 新增文件 /client/error/DuplicateName.jsp
	- 新增文件 /client/js/return.js
- 修改注册验证码为数字
	- 修改文件new_words.txt

### 4.30PM
- 增加用户删除和修改发布信息功能
	- 修改文件 MessageDao.java
	- 修改文件 MessageService.java
	- 新增文件 GetMessageServlet.java
	- 新增文件 UpdateMessage.java
	- 新增文件 updateMessage.jsp
	- 修改文件 myMessage.jsp
	- 修改文件 web.xml, 新增<servlet>/manager/UpdateMessageServlet,<servlet>GetMessageServlet

### 5.3PM
-  新增共享社区点击用户名展示用户信息功能
	- 新建文件 FindUserByUserNameServlet.java
	- 修改文件 showMessage.jsp
	- 新建文件 userInformation.jsp
	- 修改文件 web.xml, 新增<servlet>userInformation
- 修复购物车为空时，也能生成订单的bug
	- 修改cart.jsp文件，增加js语句判断购物车状态

### 5.10PM
- 整合前后端资源
- 修改文件showMessage.jsp，增加头像
- 新增用户上传书籍后，系统自动在社区发布信息功能
	- 修改文件UserAddProductServlet.java

### 5.11PM
- 增加用户充值功能
	- 新增文件 UpdateBalanceServlet.java
	- 新增文件 rechargeServlet.java
	- 新增文件 confirmRecharge.jsp
	- 新增文件 recharge.jsp
	- 修改文件 booklist.jsp 
	- 修改文件 modifyuserinfo.jsp 
	- 修改文件 orderlist.jsp 
	- 修改文件 myAccount.jsp 
	- 新增文件 mybalance.jsp
	- 修改文件 web.xml, 新增<servlet>updatebalance，新增<servlet>rechargeServlet
- 修改文件 ChangeOrderStateServlet.java，更改支付成功后的页面跳转
- 修改文件 pay.jsp，优化支付页面
- 修改文件 confirm.jsp 优化支付页面

### 5.12PM
- 购物车直接跳转到支付页面 
	- 修改文件 CreatOrderServlet.java
	- 新建文件 orderPayInfo.jsp
- 修改文件 recharge.jsp
- 修改文件 left.jsp 

### 5.17 
- 新增管理员功能 用户管理
	- 修改文件 UserDao.java
	- 新建文件 ListUserServlet.java
	- 新建文件 /admin/users/list.jsp
	- 修改文件 web.xml, 新增<servlet>listUser
- 新增管理员功能 帖子管理
	- 修改文件 ShowMessagesServlet.java
	- 修改文件 showMessage.jsp
	- 修改文件 menu_search.jsp
	- 修改文件 myMessage.jsp
	- 修改文件 left.jsp 
	- 修改文件 DeleteMessageServlet.java
	- 新建文件 /admin/users/meList.jsp

### 5.18AM
- 新增功能 登录记录查询
	- 新增表 ip
	- 新增文件 IPDao.java
	- 新增文件 IP.java
	- 新增文件 IPService.java
	- 新增文件 getIPServlet.java
	- 新增文件 ListIpServlet.java
	- 新增文件 /ip/ipList.jsp
	- 修改文件 LoginServlet.java
	- 修改文件 修改文件 left.jsp 
	- 修改文件 web.xml

### 5.18PM
- 新增功能 销售榜单查询
	- 新建文件 ListSaleTable.java
	- 新建文件 /products/saleList.jsp
	- 修改文件 web.xml
- 恢复功能 销售榜单下载
	- 修改文件 download.jsp
	- 修改文件 left.jsp