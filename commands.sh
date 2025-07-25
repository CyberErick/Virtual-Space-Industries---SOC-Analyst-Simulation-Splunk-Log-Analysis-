
---

## ✅ `commands.sh`

This script is a utility helper for reloading logs, running sample SPL queries, and organizing results.

```bash
#!/bin/bash

# Load Windows Logs into Splunk
echo "Loading Windows logs into Splunk..."
splunk add oneshot ./windows_server_logs.csv -index main -sourcetype csv -host Windows_server_logs

# Load Apache Logs into Splunk
echo "Loading Apache logs into Splunk..."
splunk add oneshot ./apache_logs.txt -index main -sourcetype apache -host Apache_logs

# Sample SPL Queries for Dashboards
echo "Running SPL for Signature Breakdown (Windows)..."
echo 'index=main host=Windows_server_logs | stats count by signature_id, signature' > windows_signature_report.spl

echo "Running SPL for HTTP Methods (Apache)..."
echo 'index=main host=Apache_logs | stats count by method' > apache_http_method_report.spl

# Notify
echo "Commands completed. Review .spl files for reference SPL queries."
