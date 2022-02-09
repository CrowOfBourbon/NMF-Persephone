# NMF Persephone

**[Website] (https://persephoneserver.com/) **

**[Code] (https://github.com/CrowOfBourbon/NMF-Persephone)**


---

### LICENSE
NMFPersephone is licensed under the GNU Affero General Public License version 3, which can be found in full in LICENSE.

Commits with a git authorship date prior to `1420675200 +0000` (2015/01/08 00:00) are licensed under the GNU General Public License version 3, which can be found in full in LICENSE-GPL3.txt.

All commits whose authorship dates are not prior to `1420675200 +0000` are assumed to be licensed under AGPL v3, if you wish to license under GPL v3 please make this clear in the commit message and any added files.

If you wish to develop and host this codebase in a closed source manner you may use all commits prior to `1420675200 +0000`, which are licensed under GPL v3.  The major change here is that if you host a server using any code licensed under AGPLv3 you are required to provide full source code for your servers users as well including addons and modifications you have made.

See [here](https://www.gnu.org/licenses/why-affero-gpl.html) for more information.

---

### SQL Setup

The SQL backend for the library and stats tracking requires a MySQL server, as does the optional SQL saves system. Your server details go in config/dbconfig.txt, and initial database setup is done with [flyway](https://flywaydb.org/). Detailed instructions can be found [here](https://github.com/Aurorastation/Aurora.3/tree/master/SQL).

---
