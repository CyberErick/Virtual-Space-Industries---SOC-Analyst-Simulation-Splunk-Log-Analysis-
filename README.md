# Virtual Space Industries - SOC Analyst Simulation (Splunk Log Analysis)

In this project, I played the role of a Security Operations Center (SOC) Analyst for Virtual Space Industries (VSI), a company specializing in virtual-reality programs. VSI suspected that a rival company, JobeCorp, was attempting to compromise its infrastructure. My goal was to use Splunk to proactively monitor and detect suspicious activities targeting VSI's systems.

---

## 🔍 Project Objective

- Monitor Apache and Windows server logs using Splunk.
- Develop dashboards, reports, and alerts for real-time threat detection.
- Establish baselines for regular activity and identify anomalies.
- Implement additional monitoring with a Splunk add-on from Splunkbase.

---

## Technologies Used

- **Splunk Enterprise** (local instance)
- **Apache Logs**
- **Windows Event Logs**
- **Splunkbase Add-on** (custom installation)
- **CSV & TXT Logs**
- **SPL (Search Processing Language)**

---

## Tasks Completed

### Part 1: Load and Analyze Windows Logs
- Loaded and parsed `windows_server_logs.csv`
- Analyzed fields: `signature_id`, `signature`, `user`, `status`, `severity`

### Part 2: Reports, Alerts & Dashboards (Windows)
- Created reports:
  - Signature Table (with de-duplication)
  - Severity breakdown (percentages & counts)
  - Success vs Failure analysis
- Created alerts based on:
  - Failed logins
  - Successful login surges
  - Account deletion events
- Built a “Windows Server Monitoring” dashboard with time filters and custom visualizations.

### Part 3: Load and Analyze Apache Logs
- Uploaded and parsed `apache_logs.txt`
- Focused on fields: `method`, `referer_domain`, `status`, `clientip`, `useragent`

### Part 4: Reports, Alerts & Dashboards (Apache)
- Reports created:
  - HTTP Method Table
  - Top Referrer Domains
  - HTTP Status Code Count
- Alerts:
  - POST method surge
  - Foreign country IP traffic
- Built “Apache Web Server Monitoring” dashboard with maps and custom charts

### Part 5: Install Splunk Add-on from Splunkbase
- Installed: `Whois XML IP Geolocation API`
- Demonstrated how the app helped visualize geolocation-based threat detection

---

## Screenshots

> Dashboards, reports, and alerts with annotations are included in the `/screenshots` folder.

---

## File Structure

## VSI-SOC-Project

- README.md
- commands.sh
- windows_server_logs.csv
- apache_logs.txt
- screenshots/
- windows_dashboard.png
- apache_dashboard.png
- alerts_config.png
- addon_visualization.png
- addon-info/
- Whois-GeoAddon-summary.md

