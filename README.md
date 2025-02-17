# Cloudflare DDNS Update with Automatic Proxied Option 🌐🚀

This project automates the process of updating a Cloudflare DNS record with a dynamic IP while enabling Cloudflare’s proxy mode (`proxied: true`). 

## Features ✅
- Automatically updates Cloudflare DNS records when the public IP changes.
- Uses **Docker & Cron Job** for automation.
- Keeps the **proxied** option enabled for enhanced security.
- Works on **Linux (Ubuntu)** systems.

## Installation 🔧

### **Prerequisites**
- **Ubuntu Server** installed
- **Docker & Portainer** installed (optional)
- **Cloudflare API Token** with `Zone.DNS.Edit` permissions

### **Steps to Install**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/omarbenhammou/cloudflare-ddns-update.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd cloudflare-ddns-update
   ```
3. **Set Up Cloudflare API Credentials**:
   - Retrieve your `ZONE_ID` and `DNS_RECORD_ID` from Cloudflare.
   - Edit the script `update-cloudflare.sh` and replace placeholders with your API token and Zone ID.

4. **Run the Script Manually**:
   ```bash
   ./update-cloudflare.sh
   ```

5. **Automate Updates using Cron Job**:
   ```bash
   crontab -e
   ```
   Add the following line to schedule updates every 5 minutes:
   ```bash
   */5 * * * * /path/to/update-cloudflare.sh >> /var/log/cloudflare-ddns.log 2>&1
   ```

## Usage 📌

To check your DNS update:
```bash
nslookup sub.yourdomain.com
```

If you are using Docker, build and run the container:
```bash
docker build -t cloudflare-ddns .
docker run -d --name cloudflare-ddns --restart=always cloudflare-ddns
```

## Security Considerations 🔐
- Do **not** expose your Cloudflare API Token in public repositories.
- Use environment variables for storing API tokens securely.
- Limit API token permissions to only necessary scopes (`Zone.DNS.Edit`).

## License 📜
This project is licensed under the [Creative Commons Zero (CC0)](LICENSE), allowing you to freely use, modify, and distribute without any restrictions.

## Contributions 🤝
Feel free to open issues, suggest improvements, or submit pull requests!

---

### 🌟 **Star this repo if you found it useful!** 🌟

