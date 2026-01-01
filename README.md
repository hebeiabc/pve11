# Git to VMOS 云电脑部署仓库
 
 
这是一个用于部署Git to VMOS云电脑的GitHub仓库。

项目链接： `https://github.com/MOMOTAG123/GitToVmOS`  

## 部署说明

 
1.打开本项目的Actions按钮，选择ubuntu/windows

 
2. **查看GitHub Actions**

   - GitHub Actions查看工作流执行状态： https://github.com/hebeiabc/pve11
 
3. **连接到云电脑**

   - 工作流执行完成后，会在日志中显示连接信息
   - 使用Tailscale客户端连接到云电脑

 
## 配置信息

 
- **Tailscale密钥**：已配置到.env文件
- **工作流文件**：.github/workflows/

 
## 注意事项

 
- 首次部署可能需要5-10分钟
- 确保Tailscale密钥有效且具有适当的权限
- 定期检查GitHub Actions工作流状态
- 可以通过GitHub Secrets管理敏感信息

 
## 连接信息

 
部署完成后，您将获得以下连接信息：
- RDP连接：`<ip>:3389`
- VNC连接：`<tailscale-ip>:5901`