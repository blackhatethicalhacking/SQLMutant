# BHEH's SQLMutant

<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">

**Unleash the power of mutation testing on SQL queries with SQLMutant.**

SQLMutant is written by Chris "SaintDruG" Abou-Chabke from Black Hat Ethical Hacking and is designed for Red Teams and Bug Bounty Hunters!
</p>

Modded by ShadowDev aka Wishmaster

<a href="https://www.buymeacoffee.com/notarealdev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 40px !important;width: 145px !important;" ></a>

# Description

SQLMutant will search for automated subdomain enumeration and SQL injection testing, utilizing several tools including waybackurls, httpx, Arjun, and sqlmap. It begins with a Sun Tzu quote and checks if the user is connected to the internet. Then it prompts the user to enter a domain to scan and creates a directory for the output files. It fetches URLs from Wayback Machine and filters them using HTTPX, and informs the user about the number of URLs found. Then it finds more parameters using Arjun with 20 threads and extracts URLs with parameters from Arjun's output. The script merges the URLs found by Arjun with the ones ready for SQL injection and informs the user about the new number of URLs ready for SQL injection testing. Finally, it tests SQL injection on the new list of URLs using SQLMAP with a tweaked aggressive approach.

# The Flow Behind it

- Displays an ASCII art and a random quote by Sun Tzu related to offensive security.
- Asks the user for the domain to scan.
- Checks if the user is connected to the internet. If not, it prompts the user to connect before running the script.
- Creates a directory for the output files.
- Fetches URLs from Wayback Machine and filters them using HTTPX, then saves the results to the all_urls.txt file.
- Filters the URLs from all_urls.txt that are ready for SQL injection testing by applying magic regex patterns, and saves the results to the sql_ready_urls.txt file.
- Runs Arjun with 20 threads to find more parameters.
- Extracts URLs with parameters from Arjun's output and saves them to the arjun_urls.txt file.
- Merges the URLs found by Arjun with the ones ready for SQL injection, and saves the results to the sql_ready_urls2.txt file.
- Tests SQL injection on the URLs in sql_ready_urls2.txt using SQLMAP with a tweaked aggressive approach.

# Features:

- URL Fuzzer: This feature allows the user to specify a target URL and then perform a fuzzing attack to find any vulnerable parameters that can be exploited for SQL injection. SQLMutant uses a variety of techniques to detect SQL injection vulnerabilities, including time-based blind injection, error-based injection, and boolean-based injection.

- SQL Payloads: SQLMutant provides a set of pre-defined SQL injection payloads that can be used to test for vulnerabilities. The payloads are designed to exploit different types of SQL injection vulnerabilities, including union-based, error-based, boolean-based, and time-based attacks.

- Header Fuzzer: This feature allows the user to fuzz HTTP headers in order to test for SQL injection vulnerabilities. The tool provides a set of pre-defined payloads that can be used to test for different types of injection attacks.

- Data Fuzzer: This feature allows the user to test for SQL injection vulnerabilities in form data submitted by the user. The tool can be used to test for vulnerabilities in both POST and GET requests.

- Waybackurls Integration: SQLMutant has integrated the Waybackurls tool, which is used to find historical versions of a web page. This feature can be used to find pages that are no longer available but may contain vulnerabilities that were present in the past. The tool can also be used to find additional pages on the target website that may be vulnerable to SQL injection attacks.

- Arjun Integration: SQLMutant also integrates the Arjun tool, which is used to find hidden parameters and directories on a web server. This feature can be used to find additional pages on the target website that may be vulnerable to SQL injection attacks.

Well Features also when you are fighting mutants:

![giphy-2](https://user-images.githubusercontent.com/13942386/220472297-df381eaf-b323-4e9c-ad7d-3148c7ff167f.gif)


# Requirements:

To use SQLMutant, you need to have the following tools installed:

NADA, took care of this with pre - install script.
Blackhat is good about pushing commits, so the main branch should be updated soon!

# Installation

`git clone https://github.com/blackhatethicalhacking/SQLMutant.git`

`cd SQLMutant`

`chmod +x SQLMutant.sh`

`./SQLMutant.sh`

# Screenshot

**Main Menu**

<img width="959" alt="Screenshot 2023-02-17 at 4 16 43 PM" src="https://user-images.githubusercontent.com/13942386/219679544-4591872f-6257-4ba4-928a-390c75837f0a.png">


# Compatibility: 

This tool has been tested on Kali Linux, Ubuntu and MacOS.

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

