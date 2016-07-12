# LX_Hud

#### 给常用蒙版添加分类,使用起来非常方便

小结:

涉及开发中常用的两个蒙版库:对其进行分类,并且给UIViewcontroller写分类,使用更加方便;

* [SVProgressHUD](https://github.com/SVProgressHUD/SVProgressHUD)
* [MBProgressHUD](https://github.com/jdg/MBProgressHUD)

### 具体见下图
![](http://o9zpq25pv.bkt.clouddn.com/github/gif/hudDemo.gif)

### 使用方法

导入所需分类

### 默认加载

#### 一.对于MBProgressHUD
* 在控制器中,直接显示加载:

	*  [self showProgressHUD];
    
* 在控制器,请求网络成功,隐藏

	*  [self hiddenProgressHUD];
	
#### 二.对于SVProgressHUD
* 模拟网络,直接使用

	```
	 SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD showWithStatus:@"我是测试..."];
    
    [SVProgressHUD dismiss];
    
    ```

* 提示文字类的

	```
	[SVProgressHUD showSuccessWithStatus:@"成功"];
	    
	[SVProgressHUD showErrorWithStatus:@"账号或密码错误"];
	    
	[SVProgressHUD dismiss];
	
	```
#### 后记
>基本上,开发中,关于蒙版的使用,就这么多,未完待整理.....

    