
步骤 1：设置 Xcode

1.1 打开 Xcode，然后在菜单栏中选择 Xcode -> Preferences。

1.2 选择 Accounts 标签，并点击“+”按钮来添加你的 GitHub 账户信息。

1.3 在 Xcode 中打开你的项目，并进入 Source Control Navigator 视图。

1.4 点击“Repositories”按钮，展开菜单栏，右键“Remotes”然后选择“Add Existing Remote...”。

1.5 输入你的 GitHub 仓库地址，并选择“Add”。

1.6 在电脑最顶部菜单栏上选“Source Control”，点击“Fetch Changes”，就可以自动同步。

1.7 切换到你所在的分支进行开发。

步骤 2：创建新的分支

2.1 点击 Source Control Navigator 视图中选择你要作为基础的branch，右键选择“New Branch from ‘xxxx’”。

2.2 输入分支名称，并选择“Create”。

2.3 在自己的分支上开发。

步骤 3：下载最新的代码

3.1 在电脑最顶部菜单栏上选“Source Control”，点击“Fetch Changes”，就可以自动同步。

3.3 切换到你的新分支，并选择“Pull”按钮，以获取最新的代码。

步骤 4：进行开发

4.1 在 Xcode 中进行你的开发工作。

4.2 当你完成了一个任务时，选择 Source Control Navigator 视图中的你的分支，并点击右侧的“Commit”按钮，以提交你的代码。

4.3 输入提交消息，并选择“Commit”。

4.4 选择“Push”按钮，以将你的代码推送到远程仓库。

步骤 5：将变更合并到主分支

5.1 当完成了你的开发任务并提交了代码后，切换到主分支。

5.2 选择“Merge”按钮，并选择你的分支，以将你的变更合并到主分支中。

5.3 解决任何代码冲突，并提交合并请求。
