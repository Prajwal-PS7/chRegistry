# chRegistry

Script to re-generate the registry entry for Universal Discovery Agent (UDAgent)
## Overview

This script facilitates the regeneration of registry entries for the Universal Discovery Agent (UDAgent) on Unix-based operating systems. The UDAgent is a critical component for discovering and collecting information about the system it's installed on.

## Usage

1. **Download the Script:**

   Download the script to the target Unix-based system where UDAgent is installed.
      ```bash
   git clone https://github.com/Prajwal-PS7/chRegistry/chRegistry.git
   ```

3. **Grant Execution Permissions:**

   Ensure the script has execution permissions:

   ```bash
   chmod +x chRegistry.sh
   ```

4. **Execute the Script:**

   Run the script with elevated privileges:

   ```bash
   sudo ./chRegistry.sh
   ```

5. **Follow On-Screen Instructions:**

   The script will guide you through the process of regenerating the UDAgent registry entries. You do not need to put anything during execution of script.

6. **Verification:**

   After running the script, verify that the UDAgent registry entries have been successfully regenerated. You can check the "**aioptionrc**" file located in **/root/.discagnt/** or **/.discagnt/** for confirmation.

## Important Notes

- **Backup:**
  Before running the script, it is recommended to create a backup of the existing UDAgent registry entries or any critical system configurations.

- **Dependencies:**
  Ensure that any dependencies required by UDAgent are installed on the system before running the script.

- **Logging:**
  As off now there is no logs creating for the script for troubleshooting. You can review the On-Screen Instructions to identify any issues during the regeneration process.

## Contributing

Feel free to contribute to the improvement of this script by submitting pull requests or reporting issues.

## License

This script is released under the [MIT License](LICENSE). @Copyleft 

## Disclaimer

This script is provided as-is without any warranty. Use it at your own risk and ensure that you understand its impact on your system before execution.

For detailed information about the Universal Discovery Agent (UDAgent) and its configuration, refer to the official documentation provided by the vendor (MicroFocus / OpenText).
